//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2.1 (win64) Build 1957588 Wed Aug  9 16:32:24 MDT 2017
//Date        : Sat Oct 14 03:23:44 2017
//Host        : Tayo-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (a0,
    a1,
    b0,
    b1,
    carry,
    s0,
    s1);
  input a0;
  input a1;
  input b0;
  input b1;
  output carry;
  output s0;
  output s1;

  wire a0;
  wire a1;
  wire b0;
  wire b1;
  wire carry;
  wire s0;
  wire s1;

  design_1 design_1_i
       (.a0(a0),
        .a1(a1),
        .b0(b0),
        .b1(b1),
        .carry(carry),
        .s0(s0),
        .s1(s1));
endmodule
