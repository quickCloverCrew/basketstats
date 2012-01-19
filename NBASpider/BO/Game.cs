using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.BO
{
    public class Game
    {
        private Team homeTeam, visitorTeam;
        private DateTime date;
        private List<GamePeriod> periods = new List<GamePeriod>();

        public Team HomeTeam
        {
            get { return homeTeam; }
        }

        public Team VisitorTeam
        {
            get { return visitorTeam; }
        }

        public DateTime Date
        {
            get { return date; }
            set { date = value; }
        }

        public Game(Team homeTeam, Team visitorTeam, DateTime date)
        {
            this.homeTeam = homeTeam;
            this.visitorTeam = visitorTeam;
            this.date = date;
        }

        public Game(Team homeTeam, Team visitorTeam, DateTime date, List<GamePeriod> periods)
            : this(homeTeam, visitorTeam, date)
        {
            this.periods = periods;
        }

        /// <summary>
        /// Returns total score of the game.
        /// </summary>
        /// <returns></returns>
        public Score getTotalScore()
        {
            Score total = new Score();
            periods.ForEach(delegate(GamePeriod period)
            {
                total.Home += period.Score.Home;
                total.Visitor += period.Score.Visitor;
            });
            return total;
        }

        /// <summary>
        /// Returns score of concrete period by its number.
        /// </summary>
        /// <param name="number">Number of the period.</param>
        public Score getPeriodScore(byte number)
        {
            return periods[number].Score;
        }

        /// <summary>
        /// Returns the number of OTs in the game.
        /// </summary>
        /// <returns></returns>
        public byte getOTNumber()
        {
            return (byte)(periods.Count - 4 > 0 ? periods.Count - 4 : 0);
        }
    }
}
