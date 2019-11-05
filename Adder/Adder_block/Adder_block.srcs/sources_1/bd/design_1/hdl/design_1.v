//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2.1 (win64) Build 1957588 Wed Aug  9 16:32:24 MDT 2017
//Date        : Sat Oct 14 03:23:44 2017
//Host        : Tayo-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire a0_1;
  wire a1_1;
  wire b0_1;
  wire b1_1;
  wire half_adder_0_carry;
  wire half_adder_0_sum;
  wire half_adder_1_carry;
  wire half_adder_1_sum;
  wire half_adder_2_sum;
  wire half_adder_3_carry;
  wire half_adder_3_sum;

  assign a0_1 = a0;
  assign a1_1 = a1;
  assign b0_1 = b0;
  assign b1_1 = b1;
  assign carry = half_adder_2_sum;
  assign s0 = half_adder_3_sum;
  assign s1 = half_adder_1_sum;
  design_1_half_adder_0_0 half_adder_0
       (.a0(a1_1),
        .b0(b1_1),
        .carry(half_adder_0_carry),
        .sum(half_adder_0_sum));
  design_1_half_adder_1_0 half_adder_1
       (.a0(half_adder_0_sum),
        .b0(half_adder_3_carry),
        .carry(half_adder_1_carry),
        .sum(half_adder_1_sum));
  design_1_half_adder_2_0 half_adder_2
       (.a0(half_adder_0_carry),
        .b0(half_adder_1_carry),
        .sum(half_adder_2_sum));
  design_1_half_adder_3_0 half_adder_3
       (.a0(a0_1),
        .b0(b0_1),
        .carry(half_adder_3_carry),
        .sum(half_adder_3_sum));
endmodule
