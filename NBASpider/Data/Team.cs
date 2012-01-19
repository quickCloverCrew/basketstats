using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data
{
    public class Team
    {
        private Division division;
        private string name, shortName, lastName;
        
        public Division Division
        {
            get { return division; }
        }
        
        public string Name
        {
            get { return name; }
        }

        public string ShortName
        {
            get { return shortName; }
            set { shortName = value; }
        }

        public string LastName
        {
            get { return name.Substring(name.LastIndexOf(' ') + 1); }
        }

        public Conference Conf
        {
            get { return division.Conf; }
        }

        public Team(string name, Division division)
        {
            this.name = name;
            this.division = division;
        }

        public Team(string name, Division division, string shortName)
            : this(name, division)
        {
            this.shortName = shortName;
        }
    }
}
