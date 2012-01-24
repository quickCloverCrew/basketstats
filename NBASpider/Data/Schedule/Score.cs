using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data.Schedule
{
    public struct Score
    {
        private byte home, visitor;

        public byte Home
        {
            get { return home; }
            set { home = value; }
        }

        public byte Visitor
        {
            get { return visitor; }
            set { visitor = value; }
        }

        public Score(byte home, byte visitor)
        {
            this.home = home;
            this.visitor = visitor;
        }
    }
}
