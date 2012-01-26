using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NBASpider.Data.Stats;
using NBASpider.Data.Roster.Additional;

namespace NBASpider.Data.Roster
{
    public class Team : StatisticalObject
    {
        private Division division;
        private string name, shortName;
        private Coach coach;
        private List<Player> players;
        private Arena arena;
        private List<Injury> injuries;
        private string nbaComId;

        public Division Division
        {
            get { return division; }
        }

        public Conference Conf
        {
            get { return division.Conf; }
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

        public Coach Coach
        {
            get { return coach; }
            set { coach = value; }
        }

        public List<Player> Players
        {
            get { return players; }
            set { players = value; }
        }

        public Arena Arena
        {
            get { return arena; }
            set { arena = value; }
        }

        public List<Injury> Injuries
        {
            get { return injuries; }
            set { injuries = value; }
        }

        public string NbaComId
        {
            get { return nbaComId; }
            set { nbaComId = value; }
        }

        public Team(string name, Division division)
        {
            this.name = name;
            this.division = division;
        }

        public Team(string name, Division division, List<Player> players)
            : this(name, division)
        {
            this.players = players;
        }

        public Team(string name, Division division, List<Player> players, string shortName)
            : this(name, division, players)
        {
            this.shortName = shortName;
        }
    }
}
