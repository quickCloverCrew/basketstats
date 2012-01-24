using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NBASpider.Data.Roster;
using NBASpider.Data.Schedule;
using NBASpider.Data.Stats;

namespace NBASpider.Data
{
    public class FullData
    {
        private List<Team> teams = new List<Team>();
        private List<Game> games = new List<Game>();

        public List<Team> Teams
        {
            get { return teams; }
            set { teams = value; }
        }

        public List<Game> Games
        {
            get { return games; }
            set { games = value; }
        }
    }
}
