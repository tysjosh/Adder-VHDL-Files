-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2.1 (win64) Build 1957588 Wed Aug  9 16:32:24 MDT 2017
-- Date        : Sat Oct 14 03:26:26 2017
-- Host        : Tayo-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Tayo/Desktop/Adder_block/Adder_block.srcs/sources_1/bd/design_1/ip/design_1_half_adder_2_0/design_1_half_adder_2_0_sim_netlist.vhdl
-- Design      : design_1_half_adder_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_half_adder_2_0 is
  port (
    a0 : in STD_LOGIC;
    b0 : in STD_LOGIC;
    carry : out STD_LOGIC;
    sum : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_half_adder_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_half_adder_2_0 : entity is "design_1_half_adder_2_0,half_adder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_half_adder_2_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_half_adder_2_0 : entity is "half_adder,Vivado 2017.2.1";
end design_1_half_adder_2_0;

architecture STRUCTURE of design_1_half_adder_2_0 is
begin
carry_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a0,
      I1 => b0,
      O => carry
    );
sum_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a0,
      I1 => b0,
      O => sum
    );
end STRUCTURE;
