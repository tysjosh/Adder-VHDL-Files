-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2.1 (win64) Build 1957588 Wed Aug  9 16:32:24 MDT 2017
-- Date        : Sat Oct 14 03:24:47 2017
-- Host        : Tayo-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Tayo/Desktop/Adder_block/Adder_block.srcs/sources_1/bd/design_1/ip/design_1_half_adder_0_0/design_1_half_adder_0_0_stub.vhdl
-- Design      : design_1_half_adder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_half_adder_0_0 is
  Port ( 
    a0 : in STD_LOGIC;
    b0 : in STD_LOGIC;
    carry : out STD_LOGIC;
    sum : out STD_LOGIC
  );

end design_1_half_adder_0_0;

architecture stub of design_1_half_adder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a0,b0,carry,sum";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "half_adder,Vivado 2017.2.1";
begin
end;
