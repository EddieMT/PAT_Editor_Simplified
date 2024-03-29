﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PAT_Editor
{
    #region Classes for version 3

    public class BasicPatternSettings
    {
        public Dictionary<string, TimeSet> TimeSets { get; set; } = new Dictionary<string, TimeSet>();
        public Dictionary<string, Pin> PinMap { get; set; } = new Dictionary<string, Pin>();
        public Dictionary<string, DeviceMode> TruthTable { get; set; } = new Dictionary<string, DeviceMode>();
        public Dictionary<string, string> ChannelPairs { get; set; } = new Dictionary<string, string>();
    }

    public class TimeSet
    {
        public TimeSet(string Name, uint SpeedRate)
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
        public TimeSet TSW { get; set; }
        public TimeSet TSR { get; set; }
    }

    public class DeviceMode
    {
        public string DeviceModeName { get; set; }
        public Dictionary<Pin, string> TruthValues { get; set; } = new Dictionary<Pin, string>();
        public TimeSet TSW { get; set; }
    }

    public class MipiPatternSettings
    {
        public Dictionary<string, MipiMode> MipiModes { get; set; }

        public MipiPatternSettings()
        {
            MipiModes = new Dictionary<string, MipiMode>();
            MipiMode mipiMode = new MipiMode();
            mipiMode.MipiModeName = "PATTERN_RESET";
            mipiMode.LoopRequired = false;
            MipiGroup mipiGroup = new MipiGroup();
            mipiGroup.MipiGroupName = "PATTERN_RESET";
            mipiGroup.PreElapsedMicroseconds = 0;
            MipiStep mipiStep = new MipiStep();
            mipiStep.CLK = new Pin() { TSW = new TimeSet("TSX", 1), TSR = new TimeSet("TSX", 1) };
            mipiStep.MipiCodes = new List<MipiCode>();
            MipiCode mipiCode = new MipiCode();
            mipiCode.MipiCodeType = ReadWrite.Reset;
            mipiStep.MipiCodes.Add(mipiCode);
            mipiStep.CalculateLineCount();
            mipiGroup.MipiSteps.Add(mipiStep);
            mipiGroup.CalculateLineCount();
            mipiGroup.LineStart = 0;
            mipiMode.MipiGroups.Add(mipiGroup.MipiGroupName, mipiGroup);
            MipiModes.Add(mipiMode.MipiModeName, mipiMode);
        }
    }

    public class MipiMode
    {
        public string MipiModeName { get; set; }
        public MipiModeType MipiModeType { get; set; }
        public Dictionary<string, MipiGroup> MipiGroups { get; set; } = new Dictionary<string, MipiGroup>();

        public int LineStart
        {
            get
            {
                if (MipiGroups.Count > 0)
                {
                    return MipiGroups.First().Value.LineStart;
                }
                else
                {
                    return -1;
                }
            }
        }
        public int LineEnd
        {
            get
            {
                if (MipiGroups.Count > 0)
                {
                    return MipiGroups.Last().Value.LineEnd;
                }
                else
                {
                    return -1;
                }
            }
        }

        public bool LoopRequired;
    }

    public enum MipiModeType
    {
        Pattern,
        DutyCycle,
        DeviceMode
    }

    public class MipiStep
    {
        public Pin CLK { get; set; }
        public Pin DATA { get; set; }
        public SiteConfig SiteConfig { get; set; } = SiteConfig.SiteNull;
        public List<MipiCode> MipiCodes { get; set; } = new List<MipiCode>();
        public string OriginalCodes { get; set; }
        public int LineCount { get; private set; }
        public decimal ElapsedMicroseconds { get; set; }

        public MipiStepSummary Summary
        {
            get
            {
                MipiStepSummary summary = new MipiStepSummary();
                summary.Codes = OriginalCodes;
                summary.TSWByMHz = CLK.TSW.SpeedRateByMHz;
                summary.TSRByMHz = CLK.TSR.SpeedRateByMHz;
                if (SiteConfig.HasFlag(SiteConfig.Site1))
                {
                    if (CLK.Site1 != uint.MaxValue && DATA.Site1 != uint.MaxValue)
                    {
                        summary.CLKs.Add(CLK.Site1);
                        summary.DATAs.Add(DATA.Site1);
                    }
                }
                if (SiteConfig.HasFlag(SiteConfig.Site2))
                {
                    if (CLK.Site2 != uint.MaxValue && DATA.Site2 != uint.MaxValue)
                    {
                        summary.CLKs.Add(CLK.Site2);
                        summary.DATAs.Add(DATA.Site2);
                    }
                }
                if (SiteConfig.HasFlag(SiteConfig.Site3))
                {
                    if (CLK.Site3 != uint.MaxValue && DATA.Site3 != uint.MaxValue)
                    {
                        summary.CLKs.Add(CLK.Site3);
                        summary.DATAs.Add(DATA.Site3);
                    }
                }
                if (SiteConfig.HasFlag(SiteConfig.Site4))
                {
                    if (CLK.Site4 != uint.MaxValue && DATA.Site4 != uint.MaxValue)
                    {
                        summary.CLKs.Add(CLK.Site4);
                        summary.DATAs.Add(DATA.Site4);
                    }
                }

                return summary;
            }
        }

        /// <summary>
        /// time = line count / speed
        /// 因为这里的speed是MHz，所以算出来的time是us
        /// 因为line count是固定那几个值，speed也是固定那几个值，经过遍历发现
        /// time永远是除得尽的，最多小数点后面三位。换句话说，在ns级别一定是一个整数！！！
        /// </summary>
        public void CalculateLineCount()
        {
            int lineCount = 0;
            decimal elapsedMicroseconds = 0;
            foreach (MipiCode code in MipiCodes)
            {
                if (code.MipiCodeType == ReadWrite.Write || code.MipiCodeType == ReadWrite.ExtendWrite
                    || code.MipiCodeType == ReadWrite.LongExtendWrite || code.MipiCodeType == ReadWrite.UniversalExtendWrite
                    || code.MipiCodeType == ReadWrite.MaskWrite || code.MipiCodeType == ReadWrite.ZeroWrite)
                {
                    lineCount += code.LineCount;
                    elapsedMicroseconds += (decimal)code.LineCount / CLK.TSW.SpeedRateByMHz;
                }
                else if (code.MipiCodeType == ReadWrite.Read || code.MipiCodeType == ReadWrite.ExtendRead
                    || code.MipiCodeType == ReadWrite.LongExtendRead || code.MipiCodeType == ReadWrite.UniversalExtendRead)
                {
                    lineCount += code.LineCount;
                    elapsedMicroseconds += (decimal)code.LineCount / CLK.TSR.SpeedRateByMHz;
                }
                else if (code.MipiCodeType == ReadWrite.Reset)
                {
                    lineCount += code.LineCount;
                }
                else
                {
                    elapsedMicroseconds += code.ElapsedMicroseconds;
                    uint tempLineCount = code.ElapsedMicroseconds * CLK.TSW.SpeedRateByMHz;
                    lineCount += (int)Math.Ceiling((double)tempLineCount / 1000);
                }
            }

            LineCount = lineCount;
            ElapsedMicroseconds = elapsedMicroseconds;
        }
    }

    public class MipiStepSummary
    {
        public List<uint> CLKs = new List<uint>();
        public List<uint> DATAs = new List<uint>();
        public uint TSWByMHz;
        public uint TSRByMHz;
        public string Codes;
    }

    public enum SiteConfig
    {
        SiteNull = 0,
        Site1 = 1,
        Site2 = 2,
        Site3 = 4,
        Site4 = 8,
        SiteAll = 15
    }

    public class MipiCode
    {
        public ReadWrite MipiCodeType { get; set; }
        public uint UserID { get; set; }
        public uint Command { get; set; }
        public uint BC { get; set; }
        public List<uint> RegIDs { get; set; } = new List<uint>();
        public string RegIDString
        {
            get
            {
                string regID = string.Empty;
                for (int i = 0; i < RegIDs.Count; i++)
                {
                    regID += RegIDs[i].ToString("X");
                }
                return regID;
            }
        }
        public List<uint> Datas { get; set; } = new List<uint>();
        public string DataString 
        { 
            get
            {
                string data = string.Empty;
                for (int i = 0; i < Datas.Count; i++)
                {
                    data += Datas[i].ToString("X");
                }
                return data;
            }
        }
        public int LineCount
        {
            get
            {
                if (MipiCodeType == ReadWrite.Write)
                    return 36;//11+13+9+3
                else if (MipiCodeType == ReadWrite.Read)
                    return 37;//11+14+9+3
                else if(MipiCodeType == ReadWrite.ExtendWrite)
                {
                    return 36 + 9 * Datas.Count;//11+13+9+9x+3
                }
                else if (MipiCodeType == ReadWrite.ExtendRead)
                {
                    return 37 + 9 * Datas.Count;//11+13+10+9x+3
                }
                else if (MipiCodeType == ReadWrite.ZeroWrite)
                {
                    return 27;//11+13+3
                }
                else if (MipiCodeType == ReadWrite.MaskWrite)
                {
                    return 54;//11+13+9+9+9+3
                }
                else if (MipiCodeType == ReadWrite.LongExtendWrite)
                {
                    return 45 + 9 * Datas.Count;//11+13+18+9x+3
                }
                else if (MipiCodeType == ReadWrite.LongExtendRead)
                {
                    return 46 + 9 * Datas.Count;//11+13+19+9x+3
                }
                else if (MipiCodeType == ReadWrite.UniversalExtendWrite)
                {
                    return 27 + 9 * RegIDs.Count + 9 * Datas.Count;//11+13+9y+9x+3
                }
                else if (MipiCodeType == ReadWrite.UniversalExtendRead)
                {
                    return 28 + 9 * RegIDs.Count + 9 * Datas.Count;//11+13+9y+1+9x+3
                }
                else if (MipiCodeType == ReadWrite.Delay)
                    return 0;
                else if (MipiCodeType == ReadWrite.Reset)
                    return 3;
                else
                    return -1;
            }
        }
        public uint ElapsedMicroseconds { get; set; }
    }

    public class MipiGroup
    {
        public string MipiGroupName { get; set; }
        public List<MipiStep> MipiSteps { get; set; } = new List<MipiStep>();
        public uint PreElapsedMicroseconds { get; set; }
        public decimal ElapsedMicroseconds
        {
            get
            {
                return (PreElapsedMicroseconds != 0) ? PreElapsedMicroseconds : MipiSteps.Sum(x => x.ElapsedMicroseconds);
            }
        }
        public int LineStart { get; set; }
        public int LineEnd
        {
            get
            {
                return LineStart + LineCount - 1;
            }
        }
        public int LineCount { get; private set; }
        public TimeSet SupplementalTimeSet { get; private set; }
        public int SupplementalLineCount { get; private set; }
        public int SupplementalLineRemainder { get; private set; }
        public void CalculateLineCount()
        {
            if (PreElapsedMicroseconds == 0)
            {
                LineCount = MipiSteps.Sum(x => x.LineCount);
            }
            else
            {
                var calculatedElapsedMicroseconds = MipiSteps.Sum(x =>x.ElapsedMicroseconds);
                if (calculatedElapsedMicroseconds == PreElapsedMicroseconds)
                {
                    SupplementalTimeSet = MipiSteps.Last().CLK.TSW;
                    SupplementalLineCount = 0;
                    SupplementalLineRemainder = 0;
                    LineCount = MipiSteps.Sum(x => x.LineCount);
                }
                else if (calculatedElapsedMicroseconds < PreElapsedMicroseconds)
                {
                    SupplementalTimeSet = MipiSteps.Last().CLK.TSW;
                    SupplementalLineCount = (int)Math.Ceiling(SupplementalTimeSet.SpeedRateByMHz * (PreElapsedMicroseconds - calculatedElapsedMicroseconds));
                    SupplementalLineRemainder = SupplementalLineCount % 1000;
                    SupplementalLineCount = (int)Math.Ceiling((double)SupplementalLineCount / 1000);
                    LineCount = MipiSteps.Sum(x => x.LineCount) + SupplementalLineCount;
                }
                else
                {
                    throw new Exception(string.Format("MIPI配置中，检测到{0}组设置的{1}us无法覆盖其内部总{2}us的配置，请确认!", MipiGroupName, PreElapsedMicroseconds, calculatedElapsedMicroseconds));
                }
            }
        }
    }

    public class GeneralPatternSettings
    {
        public Dictionary<string, GeneralMode> GeneralModes { get; set; } = new Dictionary<string, GeneralMode>();
    }

    public class GeneralMode
    {
        public string GeneralModeName { get; set; }
        public int TriggerAt { get; set; }
        public int TriggerLine
        { 
            get
            {
                return LineStart + TriggerAt - 1;
            }
        }
        public List<KeyValuePair<DeviceMode, int>> DeviceModes { get; set; } = new List<KeyValuePair<DeviceMode, int>>();
        public int LineStart { get; set; }
        public int LineEnd
        {
            get
            {
                return LineStart + LineCount - 1;
            }
        }
        public int LineCount
        {
            get
            {
                return DeviceModes.Count;
            }
        }
        public SiteConfig SiteConfig { get; set; } = SiteConfig.SiteNull;
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
        Write,
        ExtendRead,
        ExtendWrite,
        LongExtendRead,
        LongExtendWrite,
        MaskWrite,
        UniversalExtendWrite,
        UniversalExtendRead,
        ZeroWrite,
        Delay,
        Reset
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
