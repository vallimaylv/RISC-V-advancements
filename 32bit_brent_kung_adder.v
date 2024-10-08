module bkadder_32bit(
  input [31:0] a,
  input [31:0] b,
  input cin,
  output [31:0] sum,
output cout
);
  wire [31:0] p;
  wire [31:0] g;
//Define wires
//For 1st stage
wire g1_0to1,p1_0to1;
wire g1_2to3,p1_2to3;
wire g1_4to5,p1_4to5;
wire g1_6to7,p1_6to7;
wire g1_8to9,p1_8to9;
wire g1_10to11,p1_10to11;
wire g1_12to13,p1_12to13;
wire g1_14to15,p1_14to15;
wire g1_16to17,p1_16to17;
wire g1_18to19,p1_18to19;
wire g1_20to21,p1_20to21;
wire g1_22to23,p1_22to23;
wire g1_24to25,p1_24to25;
wire g1_26to27,p1_26to27;
wire g1_28to29,p1_28to29;
wire g1_30to31,p1_30to31;
  
//For 2nd stage
wire g2_0to3,p2_0to3;
wire g2_4to7,p2_4to7;
wire g2_8to11,p2_8to11;
wire g2_12to15,p2_12to15;
wire g2_16to19,p2_16to19;
wire g2_20to23,p2_20to23;
wire g2_24to27,p2_24to27;
wire g2_28to31,p2_28to31;
  
//For 3rd stage
wire g3_0to7,p3_0to7;
wire g3_8to15,p3_8to15;
wire g3_16to23,p3_16to23;
wire g3_24to31,p3_24to31;
  
//For 4th stage
wire g4_0to15,p4_0to15;
wire g4_16to31,p4_16to31;
  
//For 5th stage
wire g5_0to31,p5_0to31;
  
//For 6th stage
wire g6_0to23,p6_0to23;  
  
//For 7th stage
wire g7_0to11,p7_0to11;
wire g7_0to19,p7_0to19;
wire g7_0to27,p7_0to27; 
   
//For 8th stage
wire g8_0to5,p8_0to5;
wire g8_0to9,p8_0to9;
wire g8_0to13,p8_0to13;
wire g8_0to17,p8_0to17;
wire g8_0to21,p8_0to21;
wire g8_0to25,p8_0to25;
wire g8_0to29,p8_0to29; 
  
//For 9th stage
wire g9_0to2, p9_0to2;
wire g9_0to4, p9_0to4;
wire g9_0to6, p9_0to6;
wire g9_0to8, p9_0to8;
wire g9_0to10, p9_0to10;
wire g9_0to12, p9_0to12;
wire g9_0to14, p9_0to14;
wire g9_0to16, p9_0to16;
wire g9_0to18, p9_0to18;
wire g9_0to20, p9_0to20;
wire g9_0to22, p9_0to22;
wire g9_0to24, p9_0to24;
wire g9_0to26, p9_0to26;
wire g9_0to28, p9_0to28;
wire g9_0to30, p9_0to30;
  
 
// start fist level
assign p[0] = a[0] ^ b[0];
assign g[0] = a[0] & b[0];


assign p[1] = a[1] ^ b[1]; 
assign g[1] = a[1] & b[1];


assign p[2] = a[2] ^ b[2]; 
assign g[2] = a[2] & b[2];


assign p[3] = a[3] ^ b[3]; 
assign g[3] = a[3] & b[3];


assign p[4] = a[4] ^ b[4]; 
assign g[4] = a[4] & b[4];

assign p[5] = a[5] ^ b[5]; 
assign g[5] = a[5] & b[5];

assign p[6] = a[6] ^ b[6]; 
assign g[6] = a[6] & b[6];


assign p[7] = a[7] ^ b[7];
assign g[7] = a[7] & b[7];

assign p[8] = a[8] ^ b[8];
assign g[8] = a[8] & b[8];


assign p[9] = a[9] ^ b[9];
assign g[9] = a[9] & b[9];


assign p[10] = a[10] ^ b[10];
assign g[10] = a[10] & b[10];


assign p[11] = a[11] ^ b[11];
assign g[11] = a[11] & b[11];
  
assign p[12] = a[12] ^ b[12];
assign g[12] = a[12] & b[12];

assign p[13] = a[13] ^ b[13];
assign g[13] = a[13] & b[13];

assign p[14] = a[14] ^ b[14];
assign g[14] = a[14] & b[14];

assign p[15] = a[15] ^ b[15];
assign g[15] = a[15] & b[15];

assign p[16] = a[16] ^ b[16];
assign g[16] = a[16] & b[16];

assign p[17] = a[17] ^ b[17];
assign g[17] = a[17] & b[17];

assign p[18] = a[18] ^ b[18];
assign g[18] = a[18] & b[18];

assign p[19] = a[19] ^ b[19];
assign g[19] = a[19] & b[19];

assign p[20] = a[20] ^ b[20];
assign g[20] = a[20] & b[20];

assign p[21] = a[21] ^ b[21];
assign g[21] = a[21] & b[21];

assign p[22] = a[22] ^ b[22];
assign g[22] = a[22] & b[22];

assign p[23] = a[23] ^ b[23];
assign g[23] = a[23] & b[23];

assign p[24] = a[24] ^ b[24]; 
assign g[24] = a[24] & b[24];

assign p[25] = a[25] ^ b[25]; 
assign g[25] = a[25] & b[25];

assign p[26] = a[26] ^ b[26]; 
assign g[26] = a[26] & b[26];

assign p[27] = a[27] ^ b[27];
assign g[27] = a[27] & b[27];

assign p[28] = a[28] ^ b[28];
assign g[28] = a[28] & b[28];

assign p[29] = a[29] ^ b[29];
assign g[29] = a[29] & b[29];


assign p[30] = a[30] ^ b[30];
assign g[30] = a[30] & b[30];

assign p[31] = a[31] ^ b[31];
assign g[31] = a[31] & b[31];
  
///////////////////////////////////////1st stage
// 0:1
assign g1_0to1 = g[1] | (p[1] & g[0]);
  assign p1_0to1 = p[1] & p[0] & cin;
  
// 2:3
assign g1_2to3 = g[3] | (p[3] & g[2]);
assign p1_2to3 = p[3] & p[2];
  
// 4:5
assign g1_4to5 = g[5] | (p[5] & g[4]);
assign p1_4to5 = p[5] & p[4];

// 6:7
assign g1_6to7 = g[7] | (p[7] & g[6]);
assign p1_6to7 = p[7] & p[6];

// 8:9
assign g1_8to9 = g[9] | (p[9] & g[8]);
assign p1_8to9 = p[9] & p[8];

// 10:11
assign g1_10to11 = g[11] | (p[11] & g[10]);
assign p1_10to11 = p[11] & p[10];

// 12:13
assign g1_12to13 = g[13] | (p[13] & g[12]);
assign p1_12to13 = p[13] & p[12];

// 14:15
assign g1_14to15 = g[15] | (p[15] & g[14]);
assign p1_14to15 = p[15] & p[14];

// 16:17
assign g1_16to17 = g[17] | (p[17] & g[16]);
assign p1_16to17 = p[17] & p[16];

// 18:19
assign g1_18to19 = g[19] | (p[19] & g[18]);
assign p1_18to19 = p[19] & p[18];

// 20:21
assign g1_20to21 = g[21] | (p[21] & g[20]);
assign p1_20to21 = p[21] & p[20];

// 22:23
assign g1_22to23 = g[23] | (p[23] & g[22]);
assign p1_22to23 = p[23] & p[22];

// 24:25
assign g1_24to25 = g[25] | (p[25] & g[24]);
assign p1_24to25 = p[25] & p[24];

// 26:27
assign g1_26to27 = g[27] | (p[27] & g[26]);
assign p1_26to27 = p[27] & p[26];

// 28:29
assign g1_28to29 = g[29] | (p[29] & g[28]);
assign p1_28to29 = p[29] & p[28];

// 30:31
assign g1_30to31 = g[31] | (p[31] & g[30]);
assign p1_30to31 = p[31] & p[30];
  
/////////////////////////////////////////2nd stage 
//0:3
assign g2_0to3 = g1_2to3 | (p1_2to3 & g1_0to1);   
assign p2_0to3 = p1_2to3 & p1_0to1;
  
//4:7
assign g2_4to7 = g1_6to7 | (p1_6to7 & g1_4to5);
assign p2_4to7 = p1_6to7 & p1_4to5;

//8:11
assign g2_8to11 = g1_10to11 | (p1_10to11 & g1_8to9);
assign p2_8to11 = p1_10to11 & p1_8to9;

//12:15
assign g2_12to15 = g1_14to15 | (p1_14to15 & g1_12to13);
assign p2_12to15 = p1_14to15 & p1_12to13;

//16:19
assign g2_16to19 = g1_18to19 | (p1_18to19 & g1_16to17);
assign p2_16to19 = p1_18to19 & p1_16to17;

//20:23
assign g2_20to23 = g1_22to23 | (p1_22to23 & g1_20to21);
assign p2_20to23 = p1_22to23 & p1_20to21;

//24:27
assign g2_24to27 = g1_26to27 | (p1_26to27 & g1_24to25);
assign p2_24to27 = p1_26to27 & p1_24to25;

//28:31
assign g2_28to31 = g1_30to31 | (p1_30to31 & g1_28to29);
assign p2_28to31 = p1_30to31 & p1_28to29;
  
/////////////////////////////////////////3rd stage 
//0:7
assign g3_0to7 = g2_4to7 | (p2_4to7 & g2_0to3);
assign p3_0to7 = p2_0to3 & p2_4to7;
 
//8:15
assign g3_8to15 = g2_12to15 | (p2_12to15 & g2_8to11);
assign p3_8to15 = p2_8to11 & p2_12to15;               

//16:23
assign g3_16to23 = g2_20to23 | (p2_20to23 & g2_16to19); 
assign p3_16to23 = p2_16to19 & p2_20to23;               

//24:31
assign g3_24to31 = g2_28to31 | (p2_28to31 & g2_24to27); 
assign p3_24to31 = p2_24to27 & p2_28to31;               
  
/////////////////////////////////////////4th stage
//0:15
assign g4_0to15 = g3_8to15 | (p3_8to15 & g3_0to7);  
assign p4_0to15 = p3_0to7 & p3_8to15;
  
//16:31
assign g4_16to31 = g3_24to31 | (p3_24to31 & g3_16to23);  
assign p4_16to31 = p3_16to23 & p3_24to31;  
  
/////////////////////////////////////////5th stage
//0:31
assign g5_0to31 = g4_16to31 | (p4_16to31 & g4_0to15);  
assign p5_0to31 = p4_0to15 & p4_16to31;  

/////////////////////////////////////////6th stage
//0:23
assign g6_0to23 = g3_16to23 | (p3_16to23 & g4_0to15);  
assign p6_0to23 = p4_0to15 & p3_16to23; 
  
/////////////////////////////////////////7th stage
//0:11
assign g7_0to11 = g2_8to11 | (p2_8to11 & g3_0to7);
assign p7_0to11 = p3_0to7 & p2_8to11;

//0:19
assign g7_0to19 = g2_16to19 | (p2_16to19 & g4_0to15);
assign p7_0to19 = p4_0to15 & p2_16to19;

//0:27  
assign g7_0to27 = g2_24to27 | (p2_24to27 & g6_0to23);
assign p7_0to27 = p6_0to23 & p2_24to27;
  
/////////////////////////////////////////8th stage
//0:5
assign g8_0to5 = g1_4to5 | (p1_4to5 & g2_0to3);
assign p8_0to5 = p2_0to3 & p1_4to5;
  
//0:9
assign g8_0to9 = g1_8to9 | (p1_8to9 & g3_0to7);
assign p8_0to9 = p3_0to7 & p1_8to9; 

//0:13
assign g8_0to13 = g1_12to13 | (p1_12to13 & g7_0to11);
assign p8_0to13 = p7_0to11 & p1_12to13;
  
//0:17
assign g8_0to17 = g1_16to17 | (p1_16to17 & g4_0to15);
assign p8_0to17= p4_0to15 & p1_16to17;
  
//0:21
assign g8_0to21 = g1_20to21 | (p1_20to21 & g7_0to19);
assign p8_0to21 = p7_0to19 & p1_20to21;
  
//0:25
assign g8_0to25 = g1_24to25 | (p1_24to25 & g6_0to23);
assign p8_0to25 = p6_0to23 & p1_24to25;
  
//0:29
assign g8_0to29 = g1_28to29 | (p1_28to29 & g7_0to27);
assign p8_0to29 = p7_0to27 & p1_28to29;  
  
/////////////////////////////////////////9th stage
//0:2
assign g9_0to2 = g[2] | (p[2] & g1_0to1);
assign p9_0to2 = p1_0to1 & p[2];
  
//0:4
assign g9_0to4 = g[4] | (p[4] & g2_0to3);
assign p9_0to4 = p2_0to3 & p[4];
  
//0:6
assign g9_0to6 = g[6] | (p[6] & g8_0to5);
assign p9_0to6 = p8_0to5 & p[6];
  
//0:8
assign g9_0to8 = g[8] | (p[8] & g3_0to7);
assign p9_0to8 = p3_0to7 & p[8];
  
//0:10
assign g9_0to10 = g[10] | (p[10] & g8_0to9);
assign p9_0to10 = p8_0to9 & p[10];
  
//0:12
assign g9_0to12 = g[12] | (p[12] & g7_0to11);
assign p9_0to12 = p7_0to11 & p[12];
  
//0:14
assign g9_0to14 = g[14] | (p[14] & g8_0to13);
assign p9_0to14 = p8_0to13 & p[14];
  
//0:16
assign g9_0to16 = g[16] | (p[16] & g4_0to15);
assign p9_0to16 = p4_0to15 & p[16];
  
//0:18
  assign g9_0to18 = g[18] | (p[18] & g8_0to17);
assign p9_0to18 = p8_0to17 & p[18];
  
//0:20
assign g9_0to20 = g[20] | (p[20] & g7_0to19);
assign p9_0to20 = p7_0to19 & p[20];
  
//0:22
assign g9_0to22 = g[22] | (p[22] & g8_0to21);
assign p9_0to22 = p8_0to21 & p[22];
  
//0:24
assign g9_0to24 = g[24] | (p[24] & g6_0to23);
assign p9_0to24 = p6_0to23 & p[24];
  
//0:26
assign g9_0to26 = g[26] | (p[26] & g8_0to25);
assign p9_0to26 = p8_0to25 & p[26];
  
//0:28
assign g9_0to28 = g[28] | (p[28] & g7_0to27);
assign p9_0to28 = p7_0to27 & p[28];
  
//0:30
assign g9_0to30 = g[30] | (p[30] & g8_0to29);
assign p9_0to30 = p8_0to29 & p[30];

//sum
  assign sum[0]=p[0]^cin; 
  assign sum[1]=p[1]^(g[0]|p[0]&cin);
assign sum[2] = p[2] ^ (g1_0to1 | p1_0to1);
assign sum[3] = p[3] ^ (g9_0to2 | p9_0to2);
assign sum[4] = p[4] ^ (g2_0to3 | p2_0to3);
assign sum[5] = p[5] ^ (g9_0to4 | p9_0to4);
assign sum[6] = p[6] ^ (g8_0to5 | p8_0to5);
assign sum[7] = p[7] ^ (g9_0to6 | p9_0to6);
assign sum[8] = p[8] ^ (g3_0to7 | p3_0to7);
assign sum[9] = p[9] ^ (g9_0to8 | p9_0to8);
assign sum[10] = p[10] ^ (g8_0to9  | p8_0to9);
assign sum[11] = p[11] ^ (g9_0to10 | p9_0to10);
assign sum[12] = p[12] ^ (g7_0to11 | p7_0to11);
assign sum[13] = p[13] ^ (g9_0to12 | p9_0to12);
assign sum[14] = p[14] ^ (g8_0to13 | p8_0to13);
assign sum[15] = p[15] ^ (g9_0to14 | p9_0to14);
assign sum[16] = p[16] ^ (g4_0to15 | p4_0to15);
assign sum[17] = p[17] ^ (g9_0to16 | p9_0to16);
assign sum[18] = p[18] ^ (g8_0to17 | p8_0to17);
assign sum[19] = p[19] ^ (g9_0to18 | p9_0to18);
assign sum[20] = p[20] ^ (g7_0to19 | p7_0to19);
assign sum[21] = p[21] ^ (g9_0to20 | p9_0to20);
assign sum[22] = p[22] ^ (g8_0to21 | p8_0to21);
assign sum[23] = p[23] ^ (g9_0to22 | p9_0to22);
assign sum[24] = p[24] ^ (g6_0to23 | p6_0to23);
assign sum[25] = p[25] ^ (g9_0to24 | p9_0to24);
assign sum[26] = p[26] ^ (g8_0to25 | p8_0to25);
assign sum[27] = p[27] ^ (g9_0to26 | p9_0to26);
assign sum[28] = p[28] ^ (g7_0to27 | p7_0to27);
assign sum[29] = p[29] ^ (g9_0to28 | p9_0to28);
assign sum[30] = p[30] ^ (g8_0to29 | p8_0to29);
assign sum[31] = p[31] ^ (g9_0to30 | p9_0to30);
  assign cout = (g5_0to31|p5_0to31);

endmodule 
