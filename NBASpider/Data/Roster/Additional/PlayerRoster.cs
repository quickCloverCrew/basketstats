using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data.Roster.Additional
{
    public struct PlayerRoster
    {
        private Positions pos;
        private byte number;

        public Positions Pos
        {
            get { return pos; }
        }

        public byte Number
        {
            get { return number; }
        }

        public PlayerRoster(Positions pos, byte number)
        {
            this.pos = pos;
            this.number = number;
        }
    }
}
