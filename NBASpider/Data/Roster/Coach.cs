using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NBASpider.Data.Stats;

namespace NBASpider.Data.Roster
{
    public class Coach : StatisticalObject
    {
        private string name;
        private byte yearsPro;
        private byte birthDate;
        private Team team;

        public string Name
        {
            get { return name; }
        }

        public byte YearsPro
        {
            get { return yearsPro; }
            set { yearsPro = value; }
        }

        public byte BirthDate
        {
            get { return birthDate; }
            set { birthDate = value; }
        }

        public Team Team
        {
            get { return team; }
        }

        public Coach(string name, Team team)
        {
            this.name = name;
            this.team = team;
        }
    }
}
