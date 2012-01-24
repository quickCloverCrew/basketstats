using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NBASpider.Data.Stats;

namespace NBASpider.Data.Roster.Additional
{
    public class College : StatisticalObject
    {
        private string name;

        public string Name
        {
            get { return name; }
        }

        public College(string name)
        {
            this.name = name;
        }
    }
}
