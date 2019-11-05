// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2.1 (win64) Build 1957588 Wed Aug  9 16:32:24 MDT 2017
// Date        : Sat Oct 14 03:27:12 2017
// Host        : Tayo-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_half_adder_3_0_stub.v
// Design      : design_1_half_adder_3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "half_adder,Vivado 2017.2.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(a0, b0, carry, sum)
/* synthesis syn_black_box black_box_pad_pin="a0,b0,carry,sum" */;
  input a0;
  input b0;
  output carry;
  output sum;
endmodule
