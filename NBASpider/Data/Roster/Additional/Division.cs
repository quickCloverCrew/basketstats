using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data.Roster.Additional
{
    public class Division
    {
        private Conference conf;
        private string name;
        
        public Conference Conf
        {
            get { return conf; }
        }

        public string Name
        {
            get { return name; }
        }

        public Division(string name)
        {
            this.name = name;
            if (name.IndexOf("Southeast") != -1
                || name.IndexOf("Atlantic") != -1
                || name.IndexOf("Central") != -1)
            {
                this.conf = Conference.EASTERN;
            }
            else
            {
                this.conf = Conference.WESTERN;
            }
        }
    }
}
