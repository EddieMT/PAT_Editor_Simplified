using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PAT_Editor
{
    public class PAT
    {
        public Dictionary<string, PATItem> PatItems = new Dictionary<string, PATItem>();
        public int PosOfClock;
        public int PosOfData;
        public string UserID;
    }

    public class PATItem
    {
        public Dictionary<string, string> RegItems = new Dictionary<string, string>();
    }
}
