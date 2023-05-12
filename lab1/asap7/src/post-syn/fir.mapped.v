
// Generated by Cadence Genus(TM) Synthesis Solution 19.15-s090_1
// Generated on: Feb  1 2021 18:54:34 PST (Feb  2 2021 02:54:34 UTC)

// Verification Directory fv/fir 

module addertree_NUM_INPUT_BITS4_NUM_OUTPUT_BITS16(in0, in1, in2, in3,
     in4, Out);
  input [3:0] in0, in1, in2, in3, in4;
  output [15:0] Out;
  wire [3:0] in0, in1, in2, in3, in4;
  wire [15:0] Out;
  wire n_0, n_1, n_3, n_4, n_5, n_6, n_7, n_8;
  wire n_9, n_10, n_11, n_12, n_13, n_14, n_15, n_16;
  wire n_17, n_18, n_20, n_21, n_22, n_23, n_24, n_25;
  wire n_26, n_27, n_28, n_29, n_30, n_31, n_32, n_33;
  wire n_34, n_35, n_37, n_38, n_39, n_40, n_41, n_42;
  wire n_43, n_44, n_45, n_46, n_47, n_48, n_49, n_50;
  wire n_51, n_52, n_53, n_54, n_55, n_56, n_57, n_58;
  wire n_61, n_63, n_65, n_67;
  AOI21xp33_ASAP7_75t_SL g816__2398(.A1 (n_67), .A2 (n_30), .B (n_28),
       .Y (Out[15]));
  XNOR2xp5_ASAP7_75t_SRAM g817__5107(.A (n_35), .B (n_67), .Y (Out[7]));
  OAI21xp33_ASAP7_75t_SL g818__6260(.A1 (n_40), .A2 (n_65), .B (n_41),
       .Y (n_67));
  XNOR2xp5_ASAP7_75t_SRAM g819__4319(.A (n_53), .B (n_65), .Y (Out[6]));
  AOI21xp33_ASAP7_75t_SL g820__8428(.A1 (n_63), .A2 (n_55), .B (n_51),
       .Y (n_65));
  XNOR2xp5_ASAP7_75t_SRAM g821__5526(.A (n_58), .B (n_63), .Y (Out[5]));
  OAI21xp33_ASAP7_75t_SL g822__6783(.A1 (n_1), .A2 (n_61), .B (n_50),
       .Y (n_63));
  XNOR2xp5_ASAP7_75t_SRAM g823__3680(.A (n_56), .B (n_61), .Y (Out[4]));
  AOI21xp33_ASAP7_75t_SL g824__1617(.A1 (n_57), .A2 (n_45), .B (n_43),
       .Y (n_61));
  XNOR2xp5_ASAP7_75t_SRAM g825__2802(.A (n_54), .B (n_57), .Y (Out[3]));
  XNOR2xp5_ASAP7_75t_SRAM g826__1705(.A (n_27), .B (n_48), .Y (Out[2]));
  NAND2xp5_ASAP7_75t_R g827__5122(.A (n_52), .B (n_55), .Y (n_58));
  NOR2xp33_ASAP7_75t_R g828__8246(.A (n_1), .B (n_49), .Y (n_56));
  AO21x1_ASAP7_75t_SRAM g829__7098(.A1 (n_27), .A2 (n_39), .B (n_47),
       .Y (n_57));
  NAND2xp5_ASAP7_75t_R g830__6131(.A (n_44), .B (n_45), .Y (n_54));
  NAND2xp5_ASAP7_75t_R g831__1881(.A (n_34), .B (n_0), .Y (n_55));
  NOR2xp33_ASAP7_75t_R g832__5115(.A (n_42), .B (n_40), .Y (n_53));
  INVx1_ASAP7_75t_SL g833(.A (n_51), .Y (n_52));
  INVx1_ASAP7_75t_SL g834(.A (n_49), .Y (n_50));
  NAND2xp5_ASAP7_75t_R g836__7482(.A (n_46), .B (n_39), .Y (n_48));
  NOR2xp33_ASAP7_75t_R g837__4733(.A (n_34), .B (n_0), .Y (n_51));
  NOR2xp33_ASAP7_75t_R g838__6161(.A (n_31), .B (n_38), .Y (n_49));
  INVx1_ASAP7_75t_SL g839(.A (n_46), .Y (n_47));
  INVx1_ASAP7_75t_SL g840(.A (n_43), .Y (n_44));
  INVx1_ASAP7_75t_SL g841(.A (n_41), .Y (n_42));
  NAND2xp5_ASAP7_75t_R g842__9315(.A (in0[2]), .B (n_32), .Y (n_46));
  NAND2xp5_ASAP7_75t_R g843__9945(.A (n_26), .B (n_37), .Y (n_45));
  NOR2xp33_ASAP7_75t_R g844__2883(.A (n_26), .B (n_37), .Y (n_43));
  NAND2xp5_ASAP7_75t_R g845__2346(.A (n_25), .B (n_33), .Y (n_41));
  NOR2xp33_ASAP7_75t_R g848__1666(.A (n_25), .B (n_33), .Y (n_40));
  OR2x2_ASAP7_75t_SRAM g849__7410(.A (in0[2]), .B (n_32), .Y (n_39));
  XNOR2xp5_ASAP7_75t_SRAM g850__6417(.A (n_20), .B (n_24), .Y (n_38));
  XNOR2xp5_ASAP7_75t_SRAM g851__5477(.A (n_6), .B (n_18), .Y (Out[1]));
  NAND2xp5_ASAP7_75t_R g852__2398(.A (n_29), .B (n_30), .Y (n_35));
  XNOR2xp5_ASAP7_75t_SRAM g853__5107(.A (n_15), .B (n_16), .Y (n_37));
  MAJIxp5_ASAP7_75t_SRAM g855__6260(.A (n_21), .B (in1[2]), .C (n_13),
       .Y (n_34));
  MAJIxp5_ASAP7_75t_SRAM g856__4319(.A (n_17), .B (in1[3]), .C (n_10),
       .Y (n_33));
  XNOR2xp5_ASAP7_75t_SRAM g857__8428(.A (in1[0]), .B (n_14), .Y (n_32));
  MAJIxp5_ASAP7_75t_SRAM g858__5526(.A (n_16), .B (in1[1]), .C (n_3),
       .Y (n_31));
  INVx1_ASAP7_75t_SL g859(.A (n_28), .Y (n_29));
  NAND2xp5_ASAP7_75t_R g860__6783(.A (in2[3]), .B (n_22), .Y (n_30));
  NOR2xp33_ASAP7_75t_R g861__3680(.A (in2[3]), .B (n_22), .Y (n_28));
  OAI21xp33_ASAP7_75t_SL g862__1617(.A1 (n_7), .A2 (n_6), .B (n_8), .Y
       (n_27));
  MAJIxp5_ASAP7_75t_SRAM g863__2802(.A (in1[0]), .B (in4[2]), .C
       (in3[0]), .Y (n_26));
  XNOR2xp5_ASAP7_75t_SRAM g864__1705(.A (in1[2]), .B (n_13), .Y (n_24));
  XNOR2xp5_ASAP7_75t_SRAM g865__5122(.A (in2[2]), .B (n_11), .Y (n_25));
  XOR2xp5_ASAP7_75t_SRAM g866__8246(.A (in1[3]), .B (n_10), .Y (n_23));
  INVx1_ASAP7_75t_SL g867(.A (n_20), .Y (n_21));
  OA21x2_ASAP7_75t_SRAM g868__7098(.A1 (in4[0]), .A2 (in0[0]), .B
       (n_6), .Y (Out[0]));
  NAND2xp5_ASAP7_75t_R g869__6131(.A (in2[2]), .B (n_12), .Y (n_22));
  NOR2xp33_ASAP7_75t_R g870__1881(.A (n_7), .B (n_9), .Y (n_18));
  AOI21xp33_ASAP7_75t_SL g871__5115(.A1 (in2[0]), .A2 (in3[2]), .B
       (n_10), .Y (n_20));
  XNOR2xp5_ASAP7_75t_SRAM g873__7482(.A (in0[3]), .B (in1[1]), .Y
       (n_15));
  XNOR2xp5_ASAP7_75t_SRAM g874__4733(.A (in4[2]), .B (in3[0]), .Y
       (n_14));
  AOI21xp33_ASAP7_75t_SL g875__6161(.A1 (n_5), .A2 (in2[1]), .B (n_11),
       .Y (n_17));
  XNOR2xp5_ASAP7_75t_SRAM g876__9315(.A (in4[3]), .B (in3[1]), .Y
       (n_16));
  INVx1_ASAP7_75t_SL g877(.A (n_11), .Y (n_12));
  NOR2xp33_ASAP7_75t_R g878__9945(.A (in4[3]), .B (n_4), .Y (n_13));
  NOR2xp33_ASAP7_75t_R g879__2883(.A (in2[1]), .B (n_5), .Y (n_11));
  NOR2xp33_ASAP7_75t_R g880__2346(.A (in3[2]), .B (in2[0]), .Y (n_10));
  INVx1_ASAP7_75t_SL g881(.A (n_8), .Y (n_9));
  NAND2xp5_ASAP7_75t_R g882__1666(.A (in4[1]), .B (in0[1]), .Y (n_8));
  NOR2xp33_ASAP7_75t_R g883__7410(.A (in4[1]), .B (in0[1]), .Y (n_7));
  NAND2xp5_ASAP7_75t_R g884__6417(.A (in4[0]), .B (in0[0]), .Y (n_6));
  INVx1_ASAP7_75t_SL g885(.A (in3[3]), .Y (n_5));
  INVx1_ASAP7_75t_SL g886(.A (in3[1]), .Y (n_4));
  INVx1_ASAP7_75t_SL g887(.A (in0[3]), .Y (n_3));
  AND2x2_ASAP7_75t_SL g2__5477(.A (n_31), .B (n_38), .Y (n_1));
  XOR2xp5_ASAP7_75t_SL g888__2398(.A (n_17), .B (n_23), .Y (n_0));
  TIELOx1_ASAP7_75t_SL tie_0_cell(.L (Out[10]));
  TIELOx1_ASAP7_75t_SL tie_0_cell1(.L (Out[11]));
  TIELOx1_ASAP7_75t_SL tie_0_cell2(.L (Out[12]));
  TIELOx1_ASAP7_75t_SL tie_0_cell3(.L (Out[13]));
  TIELOx1_ASAP7_75t_SL tie_0_cell4(.L (Out[14]));
  TIELOx1_ASAP7_75t_SL tie_0_cell5(.L (Out[8]));
  TIELOx1_ASAP7_75t_SL tie_0_cell6(.L (Out[9]));
endmodule

module REGISTER_R_N4(q, d, rst, clk);
  input [3:0] d;
  input rst, clk;
  output [3:0] q;
  wire [3:0] d;
  wire rst, clk;
  wire [3:0] q;
  wire n_0, n_1, n_2, n_3, n_4;
  DFFHQNx1_ASAP7_75t_SL \q_reg[3] (.CLK (clk), .D (n_4), .QN (q[3]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[2] (.CLK (clk), .D (n_1), .QN (q[2]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[0] (.CLK (clk), .D (n_3), .QN (q[0]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[1] (.CLK (clk), .D (n_2), .QN (q[1]));
  NAND2xp5_ASAP7_75t_R g7__5107(.A (d[3]), .B (n_0), .Y (n_4));
  NAND2xp5_ASAP7_75t_R g8__6260(.A (d[0]), .B (n_0), .Y (n_3));
  NAND2xp5_ASAP7_75t_R g9__4319(.A (d[1]), .B (n_0), .Y (n_2));
  NAND2xp5_ASAP7_75t_R g10__8428(.A (d[2]), .B (n_0), .Y (n_1));
  INVx1_ASAP7_75t_SL g11(.A (rst), .Y (n_0));
endmodule

module REGISTER_R_N4_12(q, d, rst, clk);
  input [3:0] d;
  input rst, clk;
  output [3:0] q;
  wire [3:0] d;
  wire rst, clk;
  wire [3:0] q;
  wire n_0, n_1, n_2, n_3, n_4;
  DFFHQNx1_ASAP7_75t_SL \q_reg[3] (.CLK (clk), .D (n_4), .QN (q[3]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[2] (.CLK (clk), .D (n_1), .QN (q[2]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[0] (.CLK (clk), .D (n_3), .QN (q[0]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[1] (.CLK (clk), .D (n_2), .QN (q[1]));
  NAND2xp5_ASAP7_75t_SL g7__5526(.A (n_0), .B (d[3]), .Y (n_4));
  NAND2xp5_ASAP7_75t_SL g8__6783(.A (n_0), .B (d[0]), .Y (n_3));
  NAND2xp5_ASAP7_75t_SL g9__3680(.A (n_0), .B (d[1]), .Y (n_2));
  NAND2xp5_ASAP7_75t_SL g10__1617(.A (n_0), .B (d[2]), .Y (n_1));
  INVx1_ASAP7_75t_SL g11(.A (rst), .Y (n_0));
endmodule

module REGISTER_R_N4_11(q, d, rst, clk);
  input [3:0] d;
  input rst, clk;
  output [3:0] q;
  wire [3:0] d;
  wire rst, clk;
  wire [3:0] q;
  wire n_0, n_1, n_2, n_3, n_4;
  DFFHQNx1_ASAP7_75t_SL \q_reg[3] (.CLK (clk), .D (n_4), .QN (q[3]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[2] (.CLK (clk), .D (n_1), .QN (q[2]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[0] (.CLK (clk), .D (n_3), .QN (q[0]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[1] (.CLK (clk), .D (n_2), .QN (q[1]));
  NAND2xp5_ASAP7_75t_SL g7__2802(.A (n_0), .B (d[3]), .Y (n_4));
  NAND2xp5_ASAP7_75t_SL g8__1705(.A (n_0), .B (d[0]), .Y (n_3));
  NAND2xp5_ASAP7_75t_SL g9__5122(.A (n_0), .B (d[1]), .Y (n_2));
  NAND2xp5_ASAP7_75t_SL g10__8246(.A (n_0), .B (d[2]), .Y (n_1));
  INVx1_ASAP7_75t_SL g11(.A (rst), .Y (n_0));
endmodule

module REGISTER_R_N4_10(q, d, rst, clk);
  input [3:0] d;
  input rst, clk;
  output [3:0] q;
  wire [3:0] d;
  wire rst, clk;
  wire [3:0] q;
  wire n_0, n_1, n_2, n_3, n_4;
  DFFHQNx1_ASAP7_75t_SL \q_reg[3] (.CLK (clk), .D (n_4), .QN (q[3]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[2] (.CLK (clk), .D (n_1), .QN (q[2]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[0] (.CLK (clk), .D (n_3), .QN (q[0]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[1] (.CLK (clk), .D (n_2), .QN (q[1]));
  NAND2xp5_ASAP7_75t_SL g7__7098(.A (n_0), .B (d[3]), .Y (n_4));
  NAND2xp5_ASAP7_75t_SL g8__6131(.A (n_0), .B (d[0]), .Y (n_3));
  NAND2xp5_ASAP7_75t_SL g9__1881(.A (n_0), .B (d[1]), .Y (n_2));
  NAND2xp5_ASAP7_75t_SL g10__5115(.A (n_0), .B (d[2]), .Y (n_1));
  INVx1_ASAP7_75t_SL g11(.A (rst), .Y (n_0));
endmodule

module REGISTER_R_N4_9(q, d, rst, clk);
  input [3:0] d;
  input rst, clk;
  output [3:0] q;
  wire [3:0] d;
  wire rst, clk;
  wire [3:0] q;
  wire n_0, n_1, n_2, n_3, n_4;
  DFFHQNx1_ASAP7_75t_SL \q_reg[3] (.CLK (clk), .D (n_4), .QN (q[3]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[2] (.CLK (clk), .D (n_1), .QN (q[2]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[0] (.CLK (clk), .D (n_3), .QN (q[0]));
  DFFHQNx1_ASAP7_75t_SL \q_reg[1] (.CLK (clk), .D (n_2), .QN (q[1]));
  NAND2xp5_ASAP7_75t_SL g7__7482(.A (n_0), .B (d[3]), .Y (n_4));
  NAND2xp5_ASAP7_75t_SL g8__4733(.A (n_0), .B (d[0]), .Y (n_3));
  NAND2xp5_ASAP7_75t_SL g9__6161(.A (n_0), .B (d[1]), .Y (n_2));
  NAND2xp5_ASAP7_75t_SL g10__9315(.A (n_0), .B (d[2]), .Y (n_1));
  INVx1_ASAP7_75t_SL g11(.A (rst), .Y (n_0));
endmodule

module fir(clk, rst, In, Out);
  input clk, rst;
  input [3:0] In;
  output [15:0] Out;
  wire clk, rst;
  wire [3:0] In;
  wire [15:0] Out;
  wire [3:0] delay_chain0;
  wire [3:0] delay_chain1;
  wire [3:0] delay_chain2;
  wire [3:0] delay_chain3;
  wire [3:0] delay_chain4;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, UNCONNECTED5;
  assign Out[8] = Out[15];
  assign Out[9] = Out[15];
  assign Out[10] = Out[15];
  assign Out[11] = Out[15];
  assign Out[12] = Out[15];
  assign Out[13] = Out[15];
  assign Out[14] = Out[15];
  addertree_NUM_INPUT_BITS4_NUM_OUTPUT_BITS16 add0(.in0 (delay_chain0),
       .in1 (delay_chain1), .in2 (delay_chain2), .in3 (delay_chain3),
       .in4 (delay_chain4), .Out ({Out[15], UNCONNECTED5, UNCONNECTED4,
       UNCONNECTED3, UNCONNECTED2, UNCONNECTED1, UNCONNECTED0,
       UNCONNECTED, Out[7:0]}));
  REGISTER_R_N4 delay_step0(.q (delay_chain0), .d (In), .rst (rst),
       .clk (clk));
  REGISTER_R_N4_12 delay_step1(.q (delay_chain1), .d (delay_chain0),
       .rst (rst), .clk (clk));
  REGISTER_R_N4_11 delay_step2(.q (delay_chain2), .d (delay_chain1),
       .rst (rst), .clk (clk));
  REGISTER_R_N4_10 delay_step3(.q (delay_chain3), .d (delay_chain2),
       .rst (rst), .clk (clk));
  REGISTER_R_N4_9 delay_step4(.q (delay_chain4), .d (delay_chain3),
       .rst (rst), .clk (clk));
endmodule

