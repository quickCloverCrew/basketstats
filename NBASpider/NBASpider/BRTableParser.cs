using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HtmlAgilityPack;

namespace NBASpider
{
    class BRTableParser
    {
        public string GetTableCSVData(HtmlNode table)
        {
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
