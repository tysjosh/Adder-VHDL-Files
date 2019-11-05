----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2017 08:34:51 AM
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
--  Port ( );
end two_bit_adder;

architecture Behavioral of two_bit_adder is
component two_bit_adder
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           CARRY : out STD_LOGIC;
           s0 : out STD_LOGIC;
           s1 : out STD_LOGIC);
end component;

signal A0,B0,A1,B1: std_logic := '0';
signal CARRY, s0, s1: std_logic;

begin
UUT : two_bit_adder
port map (A0 =>A0,
            B0=>B0,
            A1=>A1,
            B2=>B2,
            CARRY=>CARRY,
            s0=>s0,
            s1=>s1);
            
stimuli: process
begin

in1 <="0"; in2 <="00";
wait for 20ns;
assert (eq_0 ='1') and (ls_0='0')and (gr_0='0')report "test failed for 0000" severity error;
in1 <="00"; in2 <="01";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 0001" severity error;
in1 <="00"; in2 <="10";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 0010" severity error;
in1 <="00"; in2 <="11";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 0011" severity error;
in1 <="01"; in2 <="00";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 0100" severity error;
in1 <="01"; in2 <="01";
wait for 20ns;
assert (eq_0 ='1') and (ls_0='0')and (gr_0='0')report "test failed for 0101" severity error;
in1 <="01"; in2 <="10";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 0110" severity error;
in1 <="01"; in2 <="11";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 0111" severity error;
in1 <="10"; in2 <="00";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 1000" severity error;
in1 <="10"; in2 <="01";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 1001" severity error;
in1 <="10"; in2 <="10";
wait for 20ns;
assert (eq_0 ='1') and (ls_0='0')and (gr_0='0')report "test failed for 1010" severity error;
in1 <="10"; in2 <="11";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='1')and (gr_0='0')report "test failed for 1011" severity error;
in1 <="11"; in2 <="00";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 1100" severity error;
in1 <="11"; in2 <="01";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 1101" severity error;
in1 <="11"; in2 <="10";
wait for 20ns;
assert (eq_0 ='0') and (ls_0='0')and (gr_0='1')report "test failed for 1110" severity error;
in1 <="11"; in2 <="11";
wait for 20ns;
assert (eq_0 ='1') and (ls_0='0')and (gr_0='0')report "test failed for 1111" severity error;


wait;
end process;

end Behavioral;
