using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.BO
{
    class Team
    {
        private string name;
        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private string shortName;
        public string ShortName
        {
            get { return shortName; }
            set { shortName = value; }
        }
    }
}
