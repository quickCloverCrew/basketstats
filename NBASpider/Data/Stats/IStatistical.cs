using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data.Stats
{
    interface IStatistical
    {
        Dictionary<string, object>.KeyCollection listAllStatKeys();
        Dictionary<string, object>.KeyCollection listStatKeysByPrefix(string prefix);
        void SetStatValue(string code, object value);
        object GetStatValue(string code);
    }
}
