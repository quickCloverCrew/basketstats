using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NBASpider.Parsing;
using HtmlAgilityPack;

namespace NBASpider.Crawling
{
    class BRNBACrawler : NBACrawlerBase 
    {
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
            string uri = "/teams/BOS/2012.html";
            HtmlDocument doc = web.Load(domainName + uri, "GET");
            StringBuilder result = new StringBuilder();
            result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("injury")));
            result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("roster")));
            result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("team")));
            result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("per_game")));
            result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("per_minute")));
            result.AppendLine(parser.GetTableCSVData(doc.GetElementbyId("advanced")));
            return result.ToString();
        }
    }
}