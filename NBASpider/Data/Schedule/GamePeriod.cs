using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data.Schedule
{
    public class GamePeriod
    {
        private byte number;
        private Game game;
        private Score score;

        public byte Number
        {
            get { return number; }
        }

        public Game Game
        {
            get { return game; }
        }

        public Score Score
        {
            get { return score; }
        }

        public GamePeriod(Game game, byte number, Score score)
        {
            this.game = game;
            this.number = number;
            this.score = score;
        }
    }
}
