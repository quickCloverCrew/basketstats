using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Crawling
{
    interface INBACrawler
    {
        string GetPlayersInfo();
        string GetTeamsInfo();
        string GetRoster();
        string GetInjuries();
        string GetBoxScores();
        string GetShedule();
    }
}
