using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data
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

        public Division(string name, Conference conf)
        {
            this.name = name;
            this.conf = conf;
        }
    }
}
