using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PAT_Editor
{
    #region Classes for version 3

    public class BasicMipiSettings
    {
        public Dictionary<string, TimeSetting> TimeSettings { get; set; } = new Dictionary<string, TimeSetting>();
        public Dictionary<string, Pin> PinMap { get; set; } = new Dictionary<string, Pin>();
        public Dictionary<string, DeviceMode> TruthTable { get; set; } = new Dictionary<string, DeviceMode>();
    }

    public class TimeSetting
    {
        public TimeSetting(string Name, uint SpeedRate)
        {
            TSName = Name;
            SpeedRateByMHz = SpeedRate;
            //公式：
            //      1/(5ns * TS)  = nMHz
            //      1/5ns  * 1/TS = nMHz
            //      200MHz * 1/TS = nMHz
            //      200/TS MHz    = nMHz
            //      200/TS = n
            //      TS = 200/n
            // n允许的范围[1，2，4，5，8，10，20，25，40，50]
            //{ 1, 200 }, { 2, 100 }, { 4, 50 }, { 5, 40 }, { 8, 25 }, { 10, 20 }, { 20, 10 }, { 25, 8 }, { 40, 5 }, { 50, 4 },
            SpeedRateByTS = 200 / SpeedRate;
        }

        public string TSName { get; private set; }
        public uint SpeedRateByMHz { get; private set; }
        public uint SpeedRateByTS { get; private set; }
    }

    public class Pin
    {
        public string PinName { get; set; }
        public uint Site1 { get; set; }
        public uint Site2 { get; set; }
        public uint Site3 { get; set; }
        public uint Site4 { get; set; }
        public TimeSetting TSW { get; set; }
        public TimeSetting TSR { get; set; }
    }

    public class DeviceMode
    {
        public string DeviceModeName { get; set; }
        public Dictionary<Pin, string> TruthValues { get; set; } = new Dictionary<Pin, string>();
        public string Command { get; set; }
        public TimeSetting TSW { get; set; }
    }

    #endregion

    #region Classes for version 2
    public class Mode
    {
        public string Name { get; set; }
        public List<uint> BitsOfClock { get; set; } = new List<uint>();
        public List<uint> BitsOfData { get; set; } = new List<uint>();
        public List<ChannelGroup> ChannelGroups { get; set; } = new List<ChannelGroup>();
        public List<uint> UserIDs { get; set; } = new List<uint>();
        public List<uint> RegIDs { get; set; } = new List<uint>();
        public List<uint> Datas { get; set; } = new List<uint>();
        public List<ReadWriteAction> ReadWriteActions { get; set; } = new List<ReadWriteAction>();
        public int LineStart { get; set; }
        public int LineEnd { get; set; }
    }

    public class ReadWriteAction
    {
        public ReadWrite Action { get; set; }
        public int TSID { get; set; }
    }

    public enum ReadWrite
    {
        Read,
        Write
    }

    public class ChannelGroup
    {
        public Channel Clock { get; set; } = new Channel();
        public Channel Data { get; set; } = new Channel();
        public Channel VIO { get; set; } = new Channel();
    }

    public class Channel
    {
        public int ID { get; set; }
        public DrivePattern DrivePattern { get; set; }
        public double Vil { get; set; }
        public double Vih { get; set; }
        public double Vol { get; set; }
        public double Voh { get; set; }
        public int Start { get; set; }
        public int Stop { get; set; }
        public int Strob { get; set; }
        public int VIO_HL { get; set; }
    }

    public enum DrivePattern
    {
        Pattern,
        Drive
    }

    public class TimingSet
    {
        public int ID { get; set; }
        public int data { get; set; }
    }
    #endregion

    #region Classes for version 1
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
    #endregion
}
