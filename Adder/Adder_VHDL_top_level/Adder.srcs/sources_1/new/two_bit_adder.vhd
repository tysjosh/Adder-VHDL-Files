----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2017 04:15:55 AM
-- Design Name: 
-- Module Name: two_bit_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity two_bit_adder is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           CARRY : out STD_LOGIC;
           s0 : out STD_LOGIC;
           s1 : out STD_LOGIC);
end two_bit_adder;

architecture Behavioral of two_bit_adder is

    component half_adder

    Port ( a0 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           carry : out STD_LOGIC;
           sum0 : out STD_LOGIC);
    end component;

    component full_adder

    Port ( a1 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           carry_in : in STD_LOGIC;
           carry_out : out STD_LOGIC;
           sum1 : out STD_LOGIC);
    end component;


signal line_1: std_logic;

begin
    half: component half_adder port map (a0=>A0, b0=>B0, carry=>line_1, sum0=>s0); 
    full: component full_adder port map(a1=>A1, b1=>B1, carry_in=>line_1, carry_out=>CARRY, sum1=>s1);

end Behavioral;
