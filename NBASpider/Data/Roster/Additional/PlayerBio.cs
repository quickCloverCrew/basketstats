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
                    this.heightM = FeetToM(height);
                    this.weightKG = PoundsToKG(weight);
                    break;
                default:
                    this.heightM = height;
                    this.weightKG = weight;
                    break;
            }
        }

        public static float FeetToM(float feet)
        {
            return feet * 0.3048f;
        }

        public static float InchesToM(float inches)
        {
            return inches * 0.0254f;
        }

        public static float InchesToFeet(float inches)
        {
            return inches * 0.083333f;
        }

        public static float FeetAndInchToM(string fi)
        {
            float feet = float.Parse(fi.Substring(0, fi.IndexOf('-')));
            float inches = float.Parse(fi.Substring(fi.IndexOf('-') + 1, fi.Length - fi.IndexOf('-') - 1));
            return FeetToM(feet + InchesToFeet(inches));
        }

        public static float PoundsToKG(float pounds)
        {
            return pounds * 0.45359237f;
        }
    }
}
