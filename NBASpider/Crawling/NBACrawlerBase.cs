using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Crawling
{
    abstract class NBACrawlerBase : INBACrawler
    {
        public virtual string GetPlayersInfo()
        {
            throw new NotImplementedException();
        }

        public virtual string GetTeamsInfo()
        {
            throw new NotImplementedException();
        }

        public virtual string GetRoster()
        {
            throw new NotImplementedException();
        }

        public virtual string GetInjuries()
        {
            throw new NotImplementedException();
        }

        public virtual string GetBoxScores()
        {
            throw new NotImplementedException();
        }

        public virtual string GetShedule()
        {
            throw new NotImplementedException();
        }
    }
}
