using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

using NLog;
using NBASpider.Out;
using NBASpider.Crawling;
using NBASpider.Data;

namespace NBASpider
{
    class NBASpider
    {
        private static readonly Logger logger = LogManager.GetCurrentClassLogger();
        private static readonly INBACrawler crawler = new NBACOMCrawler(new BRNBACrawler());

        static void Main(string[] args)
        {
            logger.Info("START!");
            
            logger.Info("Getting data...");
            FullData data = crawler.Crawl();
            logger.Info("Getting data done.");

            logger.Info("DONE! Press Enter to terminate...");
            Console.ReadLine();
        }
    }
}
