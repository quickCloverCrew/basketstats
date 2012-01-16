using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NLog;
using NBASpider.Parsing;
using HtmlAgilityPack;

namespace NBASpider.Crawling
{
    class BRNBACrawler : NBACrawlerBase 
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        
        private readonly List<string> teamCodes = new List<string>() { 
            "PHI", "NYK", "BOS", "TOR", "NJN",
            "CHI", "IND", "CLE", "MIL", "DET",
            "ORL", "ATL", "MIA", "CHA", "WAS",
            "OKC", "DEN", "POR", "UTA", "MIN",
            "LAL", "LAC", "PHO", "SAC", "GSW",
            "SAS", "DAL", "MEM", "HOU", "NOH",
        };
        private readonly string domainName = "http://www.basketball-reference.com";
        
        HtmlWeb web = new HtmlWeb();
        BRTableParser parser = new BRTableParser();

        public override string GetPlayersInfo()
        {
            string uri = "/players/j/jamesle01.html";
            HtmlDocument doc = web.Load(domainName + uri, "GET");;
            return parser.GetTableCSVData(doc.GetElementbyId("totals"));
        }

        public override string GetTeamsInfo()
        {
            StringBuilder result = new StringBuilder();
            string uri = "/teams/{0}/2012.html";
            foreach (string teamCode in teamCodes)
            {
                logger.Info(teamCode + "...");
                HtmlDocument doc = web.Load(domainName + String.Format(uri, teamCode), "GET");
                result.AppendLine(parser.GetTeamInfoBoxCSVData(doc.GetElementbyId("info_box")));
                result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("injury")));
                result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("roster")));
                result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("team")));
                result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("per_game")));
                result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("per_minute")));
                result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("advanced")));
            }
            return result.ToString();
        }
    }
}