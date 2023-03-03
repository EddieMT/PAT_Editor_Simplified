//Time Sets
//TS1:50
//TS2:25
//TS3:1
//TS4:1
//Pin Map
//Pin               Site1     Site2     Site3     Site4     TSW       TSR       
//CLK1                1                                       TS1       TS2       
//DATA1               2                                       TS1       TS2       
//CLK2                9                                       TS1       TS2       
//DATA2               10                                      TS1       TS2       
//SW1_CLK             12                                      TS3       TS3       
//SW1_DATA            13                                      TS3       TS3       
//SW2_CLK             7                                       TS3       TS3       
//SW2_DATA            23                                      TS3       TS3       
//PAEN                4                                       TS3       TS3       
//C0                  5                                       TS3       TS3       
//C1                  6                                       TS3       TS3       
//Clock Data Pairs
//{CLK1,DATA1}
//Truth Table
//Mode              PAEN                C0                  C1                  TSW
//TX                  1                   0                   0                   TS4
//RX                  0                   1                   0                   TS4
//RXBypass            0                   0                   1                   TS4
//OFF                 0                   0                   0                   TS4

//MIPI-START
//PATTERN_RESET:0-2
////PATTERN_RESET[1]:{"CLKs":[],"DATAs":[],"TSWByMHz":1,"TSRByMHz":1,"Codes":null}
//W21C40:3-38
////W21C40[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"W21C40;"}
//R21C40:39-75
////R21C40[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"R21C40;"}
//ZW2003F:76-102
////ZW2003F[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"ZW2003F;"}
//MW200FFFE:103-156
////MW200FFFE[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"MW200FFFE;"}
//EW212DFFEE:157-210
////EW212DFFEE[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"EW212DFFEE;"}
//ER202DFF:211-256
////ER202DFF[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"ER202DFF;"}
//LEW212D2BFFEE:257-319
////LEW212D2BFFEE[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"LEW212D2BFFEE;"}
//LER202D2BFF:320-374
////LER202D2BFF[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"LER202D2BFF;"}
//UEW2AA_2D2B22_FFEEDDCCBB:375-473
////UEW2AA_2D2B22_FFEEDDCCBB[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"UEW2AA_2D2B22_FFEEDDCCBB;"}
//UER2AA_2D2B22_FFEEDDCCBB:474-573
////UER2AA_2D2B22_FFEEDDCCBB[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"UER2AA_2D2B22_FFEEDDCCBB;"}
//TXtoRX:574-577-575
//RXtoOFF:578-581-579
//MIPI-END
//--------------------------------------------PATTERN_RESET-----------------------------------------------------------
//--------------------------------------------PATTERN_RESET.PATTERN_RESET-----------------------------------------------------------
//--------------------------------------------PATTERN_RESET.PATTERN_RESET[1]-----------------------------------------------------------
//--------------------------------------------PATTERN_RESET.PATTERN_RESET[1][1]-----------------------------------------------------------
// PATTERN_RESET-----------------------------------------------------------
FC       1   TS4              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS4              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS4              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------W21C40-----------------------------------------------------------
//--------------------------------------------W21C40.W21C40-----------------------------------------------------------
//--------------------------------------------W21C40.W21C40[1]-----------------------------------------------------------
//--------------------------------------------W21C40.W21C40[1][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------R21C40-----------------------------------------------------------
//--------------------------------------------R21C40.R21C40-----------------------------------------------------------
//--------------------------------------------R21C40.R21C40[1]-----------------------------------------------------------
//--------------------------------------------R21C40.R21C40[1][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------ZW2003F-----------------------------------------------------------
//--------------------------------------------ZW2003F.ZW2003F-----------------------------------------------------------
//--------------------------------------------ZW2003F.ZW2003F[1]-----------------------------------------------------------
//--------------------------------------------ZW2003F.ZW2003F[1][1]-----------------------------------------------------------
// Register 0 : Data 3F -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:7] + Reg Addr[6:0])
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------MW200FFFE-----------------------------------------------------------
//--------------------------------------------MW200FFFE.MW200FFFE-----------------------------------------------------------
//--------------------------------------------MW200FFFE.MW200FFFE[1]-----------------------------------------------------------
//--------------------------------------------MW200FFFE.MW200FFFE[1][1]-----------------------------------------------------------
// Register 0 : Data FFFE -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (0001)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC3 (1001)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------EW212DFFEE-----------------------------------------------------------
//--------------------------------------------EW212DFFEE.EW212DFFEE-----------------------------------------------------------
//--------------------------------------------EW212DFFEE.EW212DFFEE[1]-----------------------------------------------------------
//--------------------------------------------EW212DFFEE.EW212DFFEE[1][1]-----------------------------------------------------------
// Register 2D : Data FFEE -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------ER202DFF-----------------------------------------------------------
//--------------------------------------------ER202DFF.ER202DFF-----------------------------------------------------------
//--------------------------------------------ER202DFF.ER202DFF[1]-----------------------------------------------------------
//--------------------------------------------ER202DFF.ER202DFF[1][1]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------LEW212D2BFFEE-----------------------------------------------------------
//--------------------------------------------LEW212D2BFFEE.LEW212D2BFFEE-----------------------------------------------------------
//--------------------------------------------LEW212D2BFFEE.LEW212D2BFFEE[1]-----------------------------------------------------------
//--------------------------------------------LEW212D2BFFEE.LEW212D2BFFEE[1][1]-----------------------------------------------------------
// Register 2D2B : Data FFEE -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (00110: Write, 00111: Read)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------LER202D2BFF-----------------------------------------------------------
//--------------------------------------------LER202D2BFF.LER202D2BFF-----------------------------------------------------------
//--------------------------------------------LER202D2BFF.LER202D2BFF[1]-----------------------------------------------------------
//--------------------------------------------LER202D2BFF.LER202D2BFF[1][1]-----------------------------------------------------------
// Register 2D2B : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (00110: Write, 00111: Read)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------UEW2AA_2D2B22_FFEEDDCCBB-----------------------------------------------------------
//--------------------------------------------UEW2AA_2D2B22_FFEEDDCCBB.UEW2AA_2D2B22_FFEEDDCCBB-----------------------------------------------------------
//--------------------------------------------UEW2AA_2D2B22_FFEEDDCCBB.UEW2AA_2D2B22_FFEEDDCCBB[1]-----------------------------------------------------------
//--------------------------------------------UEW2AA_2D2B22_FFEEDDCCBB.UEW2AA_2D2B22_FFEEDDCCBB[1][1]-----------------------------------------------------------
// Register 2D2B22 : Data FFEEDDCCBB -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------UER2AA_2D2B22_FFEEDDCCBB-----------------------------------------------------------
//--------------------------------------------UER2AA_2D2B22_FFEEDDCCBB.UER2AA_2D2B22_FFEEDDCCBB-----------------------------------------------------------
//--------------------------------------------UER2AA_2D2B22_FFEEDDCCBB.UER2AA_2D2B22_FFEEDDCCBB[1]-----------------------------------------------------------
//--------------------------------------------UER2AA_2D2B22_FFEEDDCCBB.UER2AA_2D2B22_FFEEDDCCBB[1][1]-----------------------------------------------------------
// Register 2D2B22 : Data FFEEDDCCBB -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              01XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// BC0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------TXtoRX-----------------------------------------------------------
FC       10       TS4               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// TX---574
FC       10       TS4               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// RX---575---trigger
FC       1        TS4               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// RX---576
FC       1        TS4               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// RX---577
//--------------------------------------------RXtoOFF-----------------------------------------------------------
FC       10       TS4               XXX010XXXXXXXXXXXXXXXXXXXXXXXXXX;// RX---578
FC       10       TS4               XXX000XXXXXXXXXXXXXXXXXXXXXXXXXX;// OFF---579---trigger
FC       1        TS4               XXX000XXXXXXXXXXXXXXXXXXXXXXXXXX;// OFF---580
FC       1        TS4               XXX000XXXXXXXXXXXXXXXXXXXXXXXXXX;// OFF---581
