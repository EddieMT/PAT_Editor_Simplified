//MIPI-CHANNEL:1,2|3,4
//MIPI-TS:1,2
//MIPI-START
//B7:0-72
//B8:73-145
//B9:146-721
//B10:722-865
//B11:866-5537
//B12:5538-5573
//MIPI-END

//--------------------------------------------B7-----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
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
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

//--------------------------------------------B7-----------------------------------------------------------
// Register 1C : Data 38 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

//--------------------------------------------B8-----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
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
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1C : Data 38 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

//--------------------------------------------B9-----------------------------------------------------------
// Register 0 : Data 0 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
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
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 2 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 3 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 4 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 5 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 6 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 7 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 8 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 9 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data A -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data B -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data C -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data D -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data E -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data F -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

//--------------------------------------------B10-----------------------------------------------------------
// Register 0 : Data 0 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 0 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 0 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 0 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

//--------------------------------------------B11-----------------------------------------------------------
// Register 0 : Data 0 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 0 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
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
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 1 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 2 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 2 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 3 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 3 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 4 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 4 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 5 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 5 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 6 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 6 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 7 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 7 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 8 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 8 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 9 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data 9 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data A -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data A -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data B -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data B -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data C -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data C -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data D -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data D -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data E -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data E -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data F -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 0 : Data F -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 0 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 0 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 1 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
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
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 1 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 2 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 2 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 3 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 3 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 4 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 4 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 5 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 5 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 6 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 6 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 7 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 7 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 8 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 8 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 9 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data 9 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data A -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data A -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data B -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data B -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data C -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data C -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data D -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data D -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data E -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data E -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data F -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 1 : Data F -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 0 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 0 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 1 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
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
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 1 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 2 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 2 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 3 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 3 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 4 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 4 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 5 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 5 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 6 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 6 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 7 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 7 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 8 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 8 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 9 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data 9 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data A -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data A -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data B -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data B -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data C -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data C -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data D -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data D -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data E -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data E -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data F -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 2 : Data F -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 0 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 0 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 1 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
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
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 1 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 2 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 2 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 3 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 3 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 4 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 4 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 5 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 5 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 6 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 6 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 7 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 7 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 8 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 8 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 9 -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data 9 -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data A -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data A -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data B -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data B -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data C -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data C -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data D -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data D -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data E -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data E -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data F -----------------------------------------------------------
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
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

// Register 3 : Data F -----------------------------------------------------------
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
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS2              11XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Park Bit
// Data (8 bits + Parity)
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS2              1LXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS2              1HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS2              10XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS2              0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS2              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

//--------------------------------------------B12-----------------------------------------------------------
// Register 1C : Data 0 -----------------------------------------------------------
// SSC: Start Sequence Control
FC       1   TS1              0X0XXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0X0XXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0X0XXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0000XXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0000XXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0000XXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0000XXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0000XXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0000XXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0101XXXXXXXXXXXXXXXXXXXXXXXXXXXX;
FC       1   TS1              0000XXXXXXXXXXXXXXXXXXXXXXXXXXXX;
// Command Frame (12 bits, Slave Addr[11:8], + cmd[7:5] + Reg Addr[4:0])
FC       1   TS1              1111XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              1111XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              1111XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Slave Addr
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C7 (010: Write, 011: Read)
FC       1   TS1              1111XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C6
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Write Command C5
FC       1   TS1              1111XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C4
FC       1   TS1              1111XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C3
FC       1   TS1              1111XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C2
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C1
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Reg Address C0
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Cmd + Addr)
// Data (8 bits + Parity)
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D7
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D6
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D5
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D4
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D3
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D2
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D1
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Data D0
FC       1   TS1              1111XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Parity Bit (to make odd sum Data)
// Bus Park
FC       1   TS1              1010XXXXXXXXXXXXXXXXXXXXXXXXXXXX;// Bus Park (Drive 0 then Tri-State at CLK falling)
FC       1   TS1              0X0XXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//
FC       1   TS1              XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;//

