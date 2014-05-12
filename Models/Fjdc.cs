using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WJDC.Models
{
    public class FjdcTm
    {
        public long Th { get; set; }

        public string Tm { get; set; }

        public string TiXing { get; set; }

        public IList<FjdcChoice> Choices { get; set; }

    }

    public class FjdcChoice
    {
        public long Th { get; set; }
        public long Id { get; set; }
        public string Choice { get; set; }
        public int Number { get; set; }
        public int Bfb { get; set; }
    }
}