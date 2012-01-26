using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NBASpider.Data.Stats;
using NBASpider.Data.Roster.Additional;

namespace NBASpider.Data.Roster
{
    public class Player : StatisticalObject
    {
        private string name, href;
        private College college;
        private PlayerBio bio;
        private PlayerRoster roster;
        private Team team;

        public string Name
        {
            get { return name; }
        }

        public string Href
        {
            get { return href; }
            set { href = value; }
        }

        public College College
        {
            get { return college; }
            set { college = value; }
        }

        public PlayerBio Bio
        {
            get { return bio; }
        }

        public PlayerRoster Roster
        {
            get { return roster; }
        }

        public Team Team
        {
            get { return team; }
        }

        public Player(string name, PlayerBio bio, PlayerRoster roster, Team team)
        {
            this.name = name;
            this.bio = bio;
            this.roster = roster;
            this.team = team;
        }
    }
}
