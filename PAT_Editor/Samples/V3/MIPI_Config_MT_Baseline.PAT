//Time Sets
//TS1:50
//TS2:25
//TS3:1
//TS4:1
//Pin Map
//Pin               Site1     Site2     Site3     Site4     TSW       TSR       
//CLK1                1         17                            TS1       TS2       
//DATA1               2         18                            TS1       TS2       
//CLK2                9         25                            TS1       TS2       
//DATA2               10        26                            TS1       TS2       
//SW1_CLK             12        14                            TS3       TS3       
//SW1_DATA            13        15                            TS3       TS3       
//SW2_CLK             7         7                             TS3       TS3       
//SW2_DATA            23        23                            TS3       TS3       
//PAEN                4         20                            TS3       TS3       
//C0                  5         21                            TS3       TS3       
//C1                  6         22                            TS3       TS3       
//Clock Data Pairs
//{CLK1,DATA1} {SW1_CLK,SW1_DATA}
//Truth Table
//Mode              PAEN                C0                  C1                  TSW
//TX                  1                   0                   0                   TS4
//RX                  0                   1                   0                   TS4
//RXBypass            0                   0                   1                   TS4
//OFF                 0                   0                   0                   TS4

//MIPI-START
//PATTERN_RESET:0-2
////PATTERN_RESET[1]:{"CLKs":[],"DATAs":[],"TSWByMHz":1,"TSRByMHz":1,"Codes":null}
//Samples:3-573
////Samples[1]:{"CLKs":[1,17],"DATAs":[2,18],"TSWByMHz":50,"TSRByMHz":25,"Codes":"W21C40;R21C40;ZW2003F;MW200FFFE;EW212DFFEE;ER202DFF;LEW212D2BFFEE;LER202D2BFF;UEW2AA_2D2B22_FFEEDDCCBB;UER2AA_2D2B22_FFEEDDCCBB;"}
//Test1:574-2143
////G1[1]:{"CLKs":[1,17],"DATAs":[2,18],"TSWByMHz":50,"TSRByMHz":25,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
////G1[2]:{"CLKs":[12,14],"DATAs":[13,15],"TSWByMHz":1,"TSRByMHz":1,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
////G2[1]:{"CLKs":[1,17],"DATAs":[2,18],"TSWByMHz":50,"TSRByMHz":25,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
////ttt[1]:{"CLKs":[12,14],"DATAs":[13,15],"TSWByMHz":1,"TSRByMHz":1,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
////G3[1]:{"CLKs":[1,17],"DATAs":[2,18],"TSWByMHz":50,"TSRByMHz":25,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
////G3[2]:{"CLKs":[12,14],"DATAs":[13,15],"TSWByMHz":1,"TSRByMHz":1,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
//LB_IN1_LB_G10_960:2144-3710
////G1[1]:{"CLKs":[1],"DATAs":[2],"TSWByMHz":50,"TSRByMHz":25,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
////G2[1]:{"CLKs":[12,14],"DATAs":[13,15],"TSWByMHz":1,"TSRByMHz":1,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
////G2[2]:{"CLKs":[1,17],"DATAs":[2,18],"TSWByMHz":50,"TSRByMHz":25,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
////G2[3]:{"CLKs":[12,14],"DATAs":[13,15],"TSWByMHz":1,"TSRByMHz":1,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
////G3[1]:{"CLKs":[1,17],"DATAs":[2,18],"TSWByMHz":50,"TSRByMHz":25,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
////G3[2]:{"CLKs":[12,14],"DATAs":[13,15],"TSWByMHz":1,"TSRByMHz":1,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201;DELAY(8)"}
//Test3:3711-3971
////G1[1]:{"CLKs":[17],"DATAs":[18],"TSWByMHz":50,"TSRByMHz":25,"Codes":"W21C40;W21C38;EW202Dff;W20001;W21101;W209D4;W21201"}
//TXtoRX:3972-3975-3973
//RXtoOFF:3976-3979-3977
//MIPI-END
//--------------------------------------------PATTERN_RESET-----------------------------------------------------------
//--------------------------------------------PATTERN_RESET.PATTERN_RESET-----------------------------------------------------------
//--------------------------------------------PATTERN_RESET.PATTERN_RESET[1]-----------------------------------------------------------
//--------------------------------------------PATTERN_RESET.PATTERN_RESET[1][1]-----------------------------------------------------------
// PATTERN_RESET-----------------------------------------------------------
FC       1   TS4              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS4              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS4              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------Samples-----------------------------------------------------------
//--------------------------------------------Samples.Samples-----------------------------------------------------------
//--------------------------------------------Samples.Samples[1]-----------------------------------------------------------
//--------------------------------------------Samples.Samples[1][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Samples.Samples[1][2]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Samples.Samples[1][3]-----------------------------------------------------------
// Register 0 : Data 3F -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:7] + Reg Addr[6:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Samples.Samples[1][4]-----------------------------------------------------------
// Register 0 : Data FFFE -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (0001)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC3 (1001)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Samples.Samples[1][5]-----------------------------------------------------------
// Register 2D : Data FFEE -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Samples.Samples[1][6]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC3
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC2
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC1
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Samples.Samples[1][7]-----------------------------------------------------------
// Register 2D2B : Data FFEE -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C7 (00110: Write, 00111: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Samples.Samples[1][8]-----------------------------------------------------------
// Register 2D2B : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C7 (00110: Write, 00111: Read)
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC2
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC1
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Samples.Samples[1][9]-----------------------------------------------------------
// Register 2D2B22 : Data FFEEDDCCBB -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Samples.Samples[1][10]-----------------------------------------------------------
// Register 2D2B22 : Data FFEEDDCCBB -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS2              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C7
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC3
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC2
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// BC1
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS2              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Data (8 bits + Parity)
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXX1LXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXX1HXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS2              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1-----------------------------------------------------------
//--------------------------------------------Test1.G1-----------------------------------------------------------
//--------------------------------------------Test1.G1[1]-----------------------------------------------------------
//--------------------------------------------Test1.G1[1][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[1][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[1][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[1][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[1][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[1][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[1][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[2]-----------------------------------------------------------
//--------------------------------------------Test1.G1[2][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[2][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[2][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[2][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[2][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[2][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1[2][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G1 Supplemental Lines-----------------------------------------------------------
FC       1000   TS3              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       734    TS3              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

//--------------------------------------------Test1.G2-----------------------------------------------------------
//--------------------------------------------Test1.G2[1]-----------------------------------------------------------
//--------------------------------------------Test1.G2[1][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G2[1][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G2[1][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G2[1][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G2[1][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G2[1][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G2[1][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.ttt-----------------------------------------------------------
//--------------------------------------------Test1.ttt[1]-----------------------------------------------------------
//--------------------------------------------Test1.ttt[1][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.ttt[1][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.ttt[1][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.ttt[1][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.ttt[1][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.ttt[1][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.ttt[1][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3-----------------------------------------------------------
//--------------------------------------------Test1.G3[1]-----------------------------------------------------------
//--------------------------------------------Test1.G3[1][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[1][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[1][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[1][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[1][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[1][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[1][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[2]-----------------------------------------------------------
//--------------------------------------------Test1.G3[2][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[2][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[2][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[2][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[2][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[2][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3[2][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------Test1.G3 Supplemental Lines-----------------------------------------------------------
FC       1000   TS3              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       734    TS3              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

//--------------------------------------------LB_IN1_LB_G10_960-----------------------------------------------------------
//--------------------------------------------LB_IN1_LB_G10_960.G1-----------------------------------------------------------
//--------------------------------------------LB_IN1_LB_G10_960.G1[1]-----------------------------------------------------------
//--------------------------------------------LB_IN1_LB_G10_960.G1[1][1]-----------------------------------------------------------
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
//--------------------------------------------LB_IN1_LB_G10_960.G1[1][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
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
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G1[1][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
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
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G1[1][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
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
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G1[1][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
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
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G1[1][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
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
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G1[1][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
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
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2-----------------------------------------------------------
//--------------------------------------------LB_IN1_LB_G10_960.G2[1]-----------------------------------------------------------
//--------------------------------------------LB_IN1_LB_G10_960.G2[1][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[1][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[1][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[1][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[1][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[1][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[1][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[2]-----------------------------------------------------------
//--------------------------------------------LB_IN1_LB_G10_960.G2[2][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[2][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[2][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[2][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[2][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[2][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[2][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[3]-----------------------------------------------------------
//--------------------------------------------LB_IN1_LB_G10_960.G2[3][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[3][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[3][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[3][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[3][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[3][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G2[3][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3-----------------------------------------------------------
//--------------------------------------------LB_IN1_LB_G10_960.G3[1]-----------------------------------------------------------
//--------------------------------------------LB_IN1_LB_G10_960.G3[1][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[1][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[1][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[1][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[1][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[1][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[1][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              0XXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              01XXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              00XXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[2]-----------------------------------------------------------
//--------------------------------------------LB_IN1_LB_G10_960.G3[2][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[2][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[2][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// BC0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[2][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[2][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[2][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[2][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0X0XXXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0101XXXXXXXXXXXXXXXXX;
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS3              XXXXXXXXXXX1111XXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS3              XXXXXXXXXXX1010XXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
FC       1   TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//
//--------------------------------------------LB_IN1_LB_G10_960.G3[2][8]-----------------------------------------------------------
// DELAY(8)-----------------------------------------------------------
FC       8      TS3              XXXXXXXXXXX0000XXXXXXXXXXXXXXXXX;//

//--------------------------------------------Test3-----------------------------------------------------------
//--------------------------------------------Test3.G1-----------------------------------------------------------
//--------------------------------------------Test3.G1[1]-----------------------------------------------------------
//--------------------------------------------Test3.G1[1][1]-----------------------------------------------------------
// Register 1C : Data 40 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test3.G1[1][2]-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test3.G1[1][3]-----------------------------------------------------------
// Register 2D : Data FF -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:4] + BC[3:0])
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (0000: Write, 0010: Read)
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C4
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC3
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC1
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// BC0
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit
// Reg Addr (8 bits)
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A7
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A6
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A5
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A4
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A3
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address A1
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address A0
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test3.G1[1][4]-----------------------------------------------------------
// Register 0 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test3.G1[1][5]-----------------------------------------------------------
// Register 11 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test3.G1[1][6]-----------------------------------------------------------
// Register 9 : Data D4 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------Test3.G1[1][7]-----------------------------------------------------------
// Register 12 : Data 1 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX0XXXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX01XXXXXXXXXXXXXX;
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Parity Bit
// Data (8 bits + Parity)
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D7
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D6
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D5
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D4
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D3
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D2
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Data D1
FC       1   TS1              XXXXXXXXXXXXXXXX11XXXXXXXXXXXXXX;// Data D0
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              XXXXXXXXXXXXXXXX10XXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXX00XXXXXXXXXXXXXX;//
//--------------------------------------------TXtoRX-----------------------------------------------------------
FC       10       TS4               XXXXXXXXXXXXXXXXXXX100XXXXXXXXXX;// TX---3972
FC       10       TS4               XXXXXXXXXXXXXXXXXXX010XXXXXXXXXX;// RX---3973---trigger
FC       1        TS4               XXXXXXXXXXXXXXXXXXX010XXXXXXXXXX;// RX---3974
FC       1        TS4               XXXXXXXXXXXXXXXXXXX010XXXXXXXXXX;// RX---3975
//--------------------------------------------RXtoOFF-----------------------------------------------------------
FC       10       TS4               XXX010XXXXXXXXXXXXX010XXXXXXXXXX;// RX---3976
FC       10       TS4               XXX000XXXXXXXXXXXXX000XXXXXXXXXX;// OFF---3977---trigger
FC       1        TS4               XXX000XXXXXXXXXXXXX000XXXXXXXXXX;// OFF---3978
FC       1        TS4               XXX000XXXXXXXXXXXXX000XXXXXXXXXX;// OFF---3979
