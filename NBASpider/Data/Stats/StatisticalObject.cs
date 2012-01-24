using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data.Stats
{
    public class StatisticalObject : IStatistical
    {
        private Dictionary<string, object> stats = new Dictionary<string, object>();

        public Dictionary<string, object>.KeyCollection listAllStatKeys()
        {
            return stats.Keys;
        }

        public Dictionary<string, object>.KeyCollection listStatKeysByPrefix(string prefix)
        {
            Dictionary<string, object> result = new Dictionary<string, object>();
            foreach (string key in stats.Keys)
            {
                if (key.StartsWith(prefix))
                {
                    result.Add(key, stats[key]);
                }
            }
            return result.Keys;
        }

        public void SetStatValue(string key, object value)
        {
            if (!stats.ContainsKey(key))
            {
                stats.Add(key, value);
            }
            else
            {
                stats[key] = value;
            }
        }

        public object GetStatValue(string key)
        {
            if (stats.ContainsKey(key))
            {
                return stats[key];
            }
            else
            {
                throw new ArgumentException("There's no such key in stats of object " + this.ToString());
            }
        }
    }
}
