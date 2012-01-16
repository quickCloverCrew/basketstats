using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

using NLog;
using NBASpider.IO;
using NBASpider.Crawling;

namespace NBASpider
{
    class NBASpider
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();       
        private static INBACrawler crawler = new BRNBACrawler();

        static void Main(string[] args)
        {
            logger.Info("0. Spider started!");

            //logger.Info("1. Getting players info...");
            //new CSVFileWriter("players.csv").Write(crawler.GetPlayersInfo());
            //logger.Info("1. Done.");

            logger.Info("2. Getting teams info...");
            new CSVFileWriter("teams.csv").Write(crawler.GetTeamsInfo());
            logger.Info("2. Done.");

            logger.Info("The End. Press Enter to terminate...");
            Console.ReadLine();
        }
    }
}
