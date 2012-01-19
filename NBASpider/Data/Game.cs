using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data
{
    public class Game
    {
        private Team homeTeam, visitorTeam;
        private DateTime date;
        private List<GamePeriod> periods = new List<GamePeriod>();
        private Score totalScore = new Score(0,0);

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

        public List<GamePeriod> Periods
        {
            get { return periods; }
        }

        public Score TotalScore
        {
            get
            {
                if (periods.Count >= 4 && totalScore.Home + totalScore.Visitor == 0)
                {
                    periods.ForEach(delegate(GamePeriod period)
                    {
                        totalScore.Home += period.Score.Home;
                        totalScore.Visitor += period.Score.Visitor;
                    });
                }
                return totalScore;
            }
        }

        public byte OTsCount
        {
            get { return (byte)(periods.Count - 4 > 0 ? periods.Count - 4 : 0); }
        }

        public Team Winner
        {
            get 
            {
                if (totalScore.Home + totalScore.Visitor == 0) 
                    return null;
                else
                    return totalScore.Home > totalScore.Visitor ? homeTeam : visitorTeam; 
            }
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
        /// Returns score of concrete period by its number.
        /// </summary>
        /// <param name="number">Number of the period.</param>
        public Score GetPeriodScore(byte number)
        {
            return periods[number].Score;
        }

        public void AddPeriodScore(byte number, Score score)
        {
            periods.Add(new GamePeriod(this, number, score));
        }
    }
}
