using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NBASpider.Data.Stats;

namespace NBASpider.Data.Roster.Additional
{
    public class Arena : StatisticalObject
    {
        private string name;
        private int attendance;

        public string Name
        {
            get { return name; }
        }

        public int Attendance
        {
            get { return attendance; }
            set { attendance = value; }
        }

        public Arena(string name)
        {
            this.name = name;
        }

        public Arena(string name, int attendance)
            : this(name)
        {
            this.attendance = attendance;
        }
    }
}
