using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NBASpider.Data.Roster.Additional
{
    public struct PlayerBio
    {
        private float heightM, weightKG;
        private byte yearsPro;
        private DateTime birthDate;

        public float HeightM
        {
            get { return heightM; }
        }

        public float WeightKG
        {
            get { return weightKG; }
        }

        public byte YearsPro
        {
            get { return yearsPro; }
        }
        
        public DateTime BirthDate
        {
            get { return birthDate; }
        }

        public PlayerBio(float height, float weight, byte yearsPro, DateTime birthDate, Notations notation)
        {
            this.yearsPro = yearsPro;
            this.birthDate = birthDate;
            switch (notation)
            {
                case Notations.USA:
                    this.heightM = feetToM(height);
                    this.weightKG = poundsToKG(weight);
                    break;
                default:
                    this.heightM = height;
                    this.weightKG = weight;
                    break;
            }
        }

        private static float feetToM(float feet)
        {
            return feet * 0.3048f;
        }

        private static float poundsToKG(float pounds)
        {
            return pounds * 0.45359237f;
        }
    }
}
