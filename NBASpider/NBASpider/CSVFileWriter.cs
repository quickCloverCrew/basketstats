using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace NBASpider
{
    class CSVFileWriter
    {
        string fileName;

        public CSVFileWriter(string fileName)
        {
            this.fileName = fileName;
        }

        // TODO: пока тупо так, потом нормально сделаю
        public void Write(string data)
        {
            try
            {
                FileStream fs = File.Open(fileName, FileMode.OpenOrCreate, FileAccess.Write);
                StreamWriter sw = new StreamWriter(fs, System.Text.Encoding.UTF8);
                sw.Write(data);
                sw.Close();
                sw = null;
            }
            catch (IOException fe)
            {
                string sDir = Directory.GetCurrentDirectory();
                string s = Path.Combine(sDir, fileName);
                Console.WriteLine("Error on file {0}", s);
                Console.WriteLine(fe.Message);
            }
        }
    }
}
