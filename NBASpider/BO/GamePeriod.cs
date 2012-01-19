using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.BO
{
    class GamePeriod
    {
        private byte number;
        public byte Number
        {
            get { return number; }
        }

        private Game game;
        internal Game Game
        {
            get { return game; }
        }

        private Score score;
        public Score Score
        {
            get { return score; }
            set { score = value; }
        }

        public GamePeriod(Game game, byte number)
            : this(game, number, 0, 0)
        {
        }

        public GamePeriod(Game game, byte number, byte homeTeamScore, byte visitorTeamScore)
        {
            this.game = game;
            this.number = number;
            this.score = new Score(homeTeamScore, visitorTeamScore);
        }
    }
}
