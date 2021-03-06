﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NBASpider.Data.Roster;
using NBASpider.Data.Roster.Additional;
using HtmlAgilityPack;

namespace NBASpider.Parsing
{
    class BRParser
    {
        public Team GetTeamInfo(HtmlNode div)
        {
            HtmlNode[] links = div.Descendants("a").ToArray();

            string name = div.Descendants("h1").First().InnerHtml;
            name = name.Substring(name.IndexOf(" ") + 1, name.IndexOf("Roster") - 9);

            string divName = links[3].NextSibling.InnerHtml;
            divName = divName.Substring(1, divName.Length - 12);

            Team team = new Team(name, new Division(divName));

            string coachName = links[5].InnerHtml;
            team.Coach = new Coach(coachName, team);

            HtmlNode[] strongs = div.Descendants("strong").ToArray();
            
            string arenaName = strongs[strongs.Length - 2].NextSibling.InnerHtml;
            arenaName = arenaName.Substring(1, arenaName.IndexOf("&") - 2);

            string arenaAttendance = strongs[strongs.Length - 1].NextSibling.InnerHtml;
            arenaAttendance = arenaAttendance.Substring(1, arenaAttendance.IndexOf("(") - 2).Replace(",", string.Empty);

            team.Arena = new Arena(arenaName, int.Parse(arenaAttendance));
            
            return team;
        }

        public string GetTeamInfoBoxCSVData(HtmlNode div)
        {
            StringBuilder csvBuilder = new StringBuilder();
            csvBuilder.AppendLine("Title,Division,Coach,Arena,Attendance");

            string temp = div.Descendants("h1").First().InnerHtml;
            csvBuilder.Append(temp.Substring(temp.IndexOf(" ") + 1, temp.IndexOf("Roster") - 9) + ",");

            HtmlNode[] links = div.Descendants("a").ToArray();
            temp = links[3].NextSibling.InnerHtml;
            csvBuilder.Append(temp.Substring(1, temp.Length - 12) + ",");

            temp = links[5].InnerHtml;
            csvBuilder.Append(temp + ",");

            HtmlNode[] strongs = div.Descendants("strong").ToArray();
            temp = strongs[strongs.Length - 2].NextSibling.InnerHtml;
            csvBuilder.Append(temp.Substring(1, temp.IndexOf("&") - 2) + ",");

            temp = strongs[strongs.Length - 1].NextSibling.InnerHtml;
            csvBuilder.AppendLine(temp.Substring(1, temp.IndexOf("(") - 2).Replace(",","."));

            return csvBuilder.ToString();
        }

        public string GetTableCSVData(HtmlNode table)
        {
            if (table == null) return String.Empty;

            StringBuilder csvBuilder = new StringBuilder();
            StringBuilder lineBuilder = new StringBuilder();

            foreach (HtmlNode th in table.Descendants("th"))
            {
                lineBuilder.Append(th.InnerText + ',');
            }
            csvBuilder.AppendLine(lineBuilder.Remove(lineBuilder.Length - 1, 1).ToString());
            lineBuilder.Clear();

            foreach (HtmlNode tbody in table.Descendants("tbody"))
            {
                foreach (HtmlNode tr in tbody.Descendants("tr"))
                {
                    foreach (HtmlNode td in tr.Descendants("td"))
                    {
                        lineBuilder.Append(td.InnerText + ',');
                    }
                    csvBuilder.AppendLine(lineBuilder.Remove(lineBuilder.Length - 1, 1).ToString());
                    lineBuilder.Clear();
                }
            }
            
            foreach (HtmlNode tbody in table.Descendants("tfoot"))
            {
                foreach (HtmlNode tr in tbody.Descendants("tr"))
                {
                    foreach (HtmlNode td in tr.Descendants("td"))
                    {
                        lineBuilder.Append(td.InnerText + ',');
                    }
                    csvBuilder.AppendLine(lineBuilder.Remove(lineBuilder.Length - 1, 1).ToString());
                    lineBuilder.Clear();
                }
            }

            return csvBuilder.ToString();
        }
    }
}
