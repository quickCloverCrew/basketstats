using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Globalization;

using NBASpider.Data.Roster;
using NBASpider.Data.Roster.Additional;
using HtmlAgilityPack;

namespace NBASpider.Parsing
{
    public class NBACOMParser
    {
        public List<Player> GetPlayersFromRoster(HtmlDocument rosterPage, Team team)
        {
            List<Player> players = new List<Player>();
            HtmlNode table = FindRosterTable(rosterPage.DocumentNode);

            foreach (HtmlNode row in table.Descendants("tr").Skip(2))
            {
                IEnumerable<HtmlNode> cells = row.Descendants("td");
                string name = cells.ElementAt(1).Descendants("a").First().InnerText.Trim();

                PlayerBio bio = new PlayerBio(
                    GetHeight(cells.ElementAt(3).InnerText),
                    GetWeight(cells.ElementAt(4).InnerText),
                    GetYearsPro(cells.ElementAt(7).InnerText),
                    GetBirthDate(cells.ElementAt(5).InnerText),
                    Notations.RUS
                );
                
                PlayerRoster roster = new PlayerRoster(
                    GetPos(cells.ElementAt(2).InnerText),
                    GetNumber(cells.ElementAt(0).InnerText)
                );
                
                Player player = new Player(name, bio, roster, team);
                player.College = new College(cells.ElementAt(6).InnerText.Replace("&nbsp", string.Empty).
                    Replace(";", string.Empty).Trim());
                player.Href = cells.ElementAt(1).Descendants("a").First().GetAttributeValue("href", "#");
                players.Add(player);
            }
            
            return players;
        }

        private HtmlNode FindRosterTable(HtmlNode document)
        {
            IEnumerable<HtmlNode> blocks = document.Descendants("th").
                Where(h => h.InnerHtml.IndexOf("2011-12 Roster") != -1);
            if (blocks.Count() == 0)
            {
                blocks = document.Descendants("td").
                    Where(h => h.InnerHtml.IndexOf("2011-12 Roster") != -1);
            }
            return blocks.Last().Ancestors("table").First();
        }

        private byte GetNumber(string val)
        {
            return byte.Parse(val.Trim());
        }

        private Positions GetPos(string val)
        {
            return (Positions) Enum.Parse(typeof(Positions), val.Trim().Replace("-", string.Empty));
        }

        private float GetHeight(string val)
        {
            return PlayerBio.FeetAndInchToM(val.Trim());
        }

        private float GetWeight(string val)
        {
            return PlayerBio.PoundsToKG(float.Parse(val.Trim()));
        }

        private byte GetYearsPro(string val)
        {
            return val.Trim().Equals("R") ? (byte) 0 : byte.Parse(val.Trim());
        }

        private DateTime GetBirthDate(string val)
        {
            return DateTime.ParseExact(val.Trim(), "d", CultureInfo.InvariantCulture);
        }
    }
}
