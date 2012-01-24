using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NLog;
using NBASpider.Parsing;
using NBASpider.Data;
using HtmlAgilityPack;

namespace NBASpider.Crawling
{
    public class NBACOMCrawler : NBACrawlerBase
    {
        private readonly string DOMAIN_NAME = "http://www.nba.com";
        private HtmlWeb web = new HtmlWeb();
        private BRParser parser = new BRParser();

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
            logger.Info("Getting players done.");
        }
    }
}
