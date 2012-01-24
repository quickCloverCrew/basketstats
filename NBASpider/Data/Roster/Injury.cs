using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data.Roster
{
    public class Injury
    {
        private DateTime injuryDate;
        private string type, note;

        public DateTime InjuryDate
        {
            get { return injuryDate; }
        }

        public string Type
        {
            get { return type; }
        }

        public string Note
        {
            get { return note; }
        }

        public Injury(DateTime injuryDate, string type, string note)
        {
            this.injuryDate = injuryDate;
            this.type = type;
            this.note = note;
        }
    }
}
