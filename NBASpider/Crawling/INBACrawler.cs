using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NBASpider.Data;

namespace NBASpider.Crawling
{
    public interface INBACrawler
    {
        FullData Crawl();
    }
}
