using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NLog;
using NBASpider.Parsing;
using NBASpider.Data;
using NBASpider.Data.Roster;
using HtmlAgilityPack;

namespace NBASpider.Crawling
{
    public class NBACOMCrawler : NBACrawlerBase
    {
        private readonly string DOMAIN_NAME = "http://www.nba.com";
        private HtmlWeb web = new HtmlWeb();
        private NBACOMParser parser = new NBACOMParser();

        public NBACOMCrawler(INBACrawler preCrawler):base(preCrawler) {}

        public override FullData Crawl()
        {
            data = PreCrawler.Crawl();
            CrawlPlayers();
            return data;
        }

        /// <summary>
        /// Teams must be already crawled!
        /// </summary>
        protected void  CrawlPlayers()
        {
            logger.Info("Getting players data...");
            string uri = "/{0}/roster";
            foreach (Team team in data.Teams)
            {
                logger.Info(team.ShortName + "...");
                HtmlDocument rosterPage = web.Load(DOMAIN_NAME + String.Format(uri, team.NbaComId), "GET");
                team.Players = parser.GetPlayersFromRoster(rosterPage, team);
            }
            logger.Info("Getting players done.");
        }
    }
}
