using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NLog;
using NBASpider.Parsing;
using NBASpider.Data;
using NBASpider.Data.Roster;
using NBASpider.Data.Roster.Additional;
using HtmlAgilityPack;

namespace NBASpider.Crawling
{
    class BRNBACrawler : NBACrawlerBase 
    {
        private readonly string DOMAIN_NAME = "http://www.basketball-reference.com";
        
        HtmlWeb web = new HtmlWeb();
        BRParser parser = new BRParser();

        public BRNBACrawler():base() {}

        public BRNBACrawler(INBACrawler preCrawler):base(preCrawler) {}

        public override FullData Crawl()
        {
            data = PreCrawler.Crawl();
            CrawlTeams();
            return data;
        }

        private void CrawlTeams()
        {
            logger.Info("Getting teams data...");
            StringBuilder result = new StringBuilder();
            string uri = "/teams/{0}/2012.html";
            foreach (string teamCode in CrawlingConstants.TEAM_CODE_TO_NBA_ID.Keys)
            {
                logger.Info(teamCode + "...");
                HtmlDocument doc = web.Load(DOMAIN_NAME + String.Format(uri, teamCode), "GET");
                Team team = parser.GetTeamInfo(doc.GetElementbyId("info_box"));
                team.ShortName = teamCode;
                team.NbaComId = CrawlingConstants.TEAM_CODE_TO_NBA_ID[teamCode];
                data.Teams.Add(team);
            }
            logger.Info("Getting teams done.");
        }
    }
}