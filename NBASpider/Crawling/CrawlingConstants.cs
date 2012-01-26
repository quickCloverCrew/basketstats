using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Crawling
{
    public class CrawlingConstants
    {
        public static readonly string NBACOM_ROSTERS_PAGE = "/teams/teamIndividualLinks.html?title=Team%20Roster&file=roster";

        public static readonly Dictionary<string, string> TEAM_CODE_TO_NBA_ID = new Dictionary<string, string>()
        {
            { "PHI", "sixers" },
            { "NYK", "knicks" },
            { "BOS", "celtics" },
            { "TOR", "raptors" },
            { "NJN", "nets" },
            { "CHI", "bulls" },
            { "IND", "pacers" },
            { "CLE", "cavaliers" },
            { "MIL", "bucks" },
            { "DET", "pistons" },
            { "ORL", "magic" },
            { "ATL", "hawks" },
            { "MIA", "heat" },
            { "CHA", "bobcats" },
            { "WAS", "wizards" },
            { "OKC", "thunder" },
            { "DEN", "nuggets" },
            { "POR", "blazers" },
            { "UTA", "jazz" },
            { "MIN", "timberwolves" },
            { "LAL", "lakers" },
            { "LAC", "clippers" },
            { "PHO", "suns" },
            { "SAC", "kings" },
            { "GSW", "warriors" },
            { "SAS", "spurs" },
            { "DAL", "mavericks" },
            { "MEM", "grizzlies" },
            { "HOU", "rockets" },
            { "NOH", "hornets" }
        };

        public static readonly List<string> TEAM_CODES = new List<string>() { 
            "PHI", "NYK", "BOS", "TOR", "NJN",
            "CHI", "IND", "CLE", "MIL", "DET",
            "ORL", "ATL", "MIA", "CHA", "WAS",
            "OKC", "DEN", "POR", "UTA", "MIN",
            "LAL", "LAC", "PHO", "SAC", "GSW",
            "SAS", "DAL", "MEM", "HOU", "NOH",
        };

        public static readonly List<string> TEAM_LAST_NAMES = new List<string>() { 
            "sixers", "knicks", "celtics", "raptors", "nets",
            "bulls", "pacers", "cavaliers", "bucks", "pistons",
            "magic", "hawks", "heat", "bobcats", "wizards",
            "thunder", "nuggets", "blazers", "jazz", "timberwolves",
            "lakers", "clippers", "suns", "kings", "warriors",
            "spurs", "mavericks", "grizzlies", "rockets", "hornets",
        };
    }
}
