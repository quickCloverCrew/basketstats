using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using NLog;

using HtmlAgilityPack;

namespace NBASpider
{
    class NBASpider
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        static void Main(string[] args)
        {
            logger.Info("Start!");

            string uri;
            HtmlWeb web = new HtmlWeb();
            BRTableParser parser = new BRTableParser();
            HtmlDocument doc;

            uri = "http://www.basketball-reference.com/players/j/jamesle01.html";
            doc = web.Load(uri, "GET");
            Console.Write(parser.GetTableCSVData(doc.GetElementbyId("totals")));

            uri = "http://www.basketball-reference.com/teams/BOS/2012.html";
            doc = web.Load(uri, "GET");
            Console.Write(parser.GetTableCSVData(doc.GetElementbyId("injury")));
            Console.Write(parser.GetTableCSVData(doc.GetElementbyId("roster")));
            Console.Write(parser.GetTableCSVData(doc.GetElementbyId("team")));
            Console.Write(parser.GetTableCSVData(doc.GetElementbyId("totals")));
            Console.Write(parser.GetTableCSVData(doc.GetElementbyId("per_game")));
            Console.Write(parser.GetTableCSVData(doc.GetElementbyId("per_minute")));
            Console.Write(parser.GetTableCSVData(doc.GetElementbyId("advanced")));

            new CSVFileWriter("data.csv").Write(parser.GetTableCSVData(doc.GetElementbyId("advanced")));

            Console.WriteLine("Press Enter to terminate...");
            Console.ReadLine();
        }
    }
}
