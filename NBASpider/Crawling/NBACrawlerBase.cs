using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NLog;
using NBASpider.Parsing;
using HtmlAgilityPack;
using NBASpider.Data;

namespace NBASpider.Crawling
{
    public class NBACrawlerBase : INBACrawler
    {
        protected readonly static Logger logger = LogManager.GetCurrentClassLogger();

        protected FullData data;
        private INBACrawler preCrawler;

        protected INBACrawler PreCrawler
        {
            get { return preCrawler == null ? new NBACrawlerBase() : preCrawler; }
            set { preCrawler = value; }
        }

        public NBACrawlerBase()
        {
            data = new FullData();
        }

        /// <summary>
        /// Конструктор для возможности запускать несколько краулеров друг за другом.
        /// Примерно Декоратор. Только приходится его вручную наследовать :(
        /// Пока не придумал, как лучше сделать...
        /// </summary>
        /// <param name="crawler"></param>
        public NBACrawlerBase(INBACrawler crawler)
            : this()
        {
            this.preCrawler = crawler;
        }

        public virtual FullData Crawl()
        {
            return data;
        }
    }
}
