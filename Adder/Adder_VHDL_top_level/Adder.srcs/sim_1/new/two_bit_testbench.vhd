----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2017 10:19:47 AM
-- Design Name: 
-- Module Name: two_bit_testbench - Behavioral
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

entity two_bit_testbench is
--  Port ( );
end two_bit_testbench;

architecture Behavioral of two_bit_testbench is

component two_bit_adder is
port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           CARRY : out STD_LOGIC;
           s0 : out STD_LOGIC;
           s1 : out STD_LOGIC);
end component;


signal A0,B0,A1,B1: std_logic:= '0';
signal CARRY,s0,s1: std_logic;

begin
UUT: two_bit_adder port map( A0=>A0, B0=>B0, A1=>A1, B1=>B1, CARRY=>CARRY, s0=>s0, s1=>s1);

stimuli: process
begin

A0<='0';B0<='0';A1<='0';B1<='0';
wait for 20ns;
assert (CARRY='0') and (s0='0')and (s1='0')report "test failed for 0000" severity error;

A0<='0';B0<='1';A1<='0';B1<='0';
wait for 20ns;
assert (CARRY='0') and (s0='1')and (s1='0')report "test failed for 0001" severity error;

A0<='0';B0<='0';A1<='0';B1<='1';
wait for 20ns;
assert (CARRY='0') and (s0='0')and (s1='1')report "test failed for 0010" severity error;

A0<='0';B0<='1';A1<='0';B1<='1';
wait for 20ns;
assert (CARRY='0') and (s0='1')and (s1='1')report "test failed for 0011" severity error;

A0<='1';B0<='0';A1<='0';B1<='0';
wait for 20ns;
assert (CARRY='0') and (s0='1')and (s1='0')report "test failed for 0100" severity error;

A0<='1';B0<='1';A1<='0';B1<='0';
wait for 20ns;
assert (CARRY='0') and (s0='0')and (s1='1')report "test failed for 0101" severity error;

A0<='1';B0<='0';A1<='0';B1<='1';
wait for 20ns;
assert (CARRY='0') and (s0='1')and (s1='1')report "test failed for 0110" severity error;

A0<='1';B0<='1';A1<='0';B1<='1';
wait for 20ns;
assert (CARRY='1') and (s0='0')and (s1='0')report "test failed for 0111" severity error;

A0<='0';B0<='0';A1<='1';B1<='0';
wait for 20ns;
assert (CARRY='0') and (s0='0')and (s1='1')report "test failed for 1000" severity error;

A0<='0';B0<='1';A1<='1';B1<='0';
wait for 20ns;
assert (CARRY='0') and (s0='1')and (s1='1')report "test failed for 1001" severity error;

A0<='0';B0<='0';A1<='1';B1<='1';
wait for 20ns;
assert (CARRY='1') and (s0='0')and (s1='0')report "test failed for 1010" severity error;

A0<='0';B0<='1';A1<='1';B1<='1';
wait for 20ns;
assert (CARRY='1') and (s0='1')and (s1='0')report "test failed for 1011" severity error;

A0<='1';B0<='0';A1<='1';B1<='0';
wait for 20ns;
assert (CARRY='0') and (s0='1')and (s1='1')report "test failed for 1100" severity error;

A0<='1';B0<='1';A1<='1';B1<='0';
wait for 20ns;
assert (CARRY='1') and (s0='0')and (s1='0')report "test failed for 1101" severity error;

A0<='1';B0<='0';A1<='1';B1<='1';
wait for 20ns;
assert (CARRY='1') and (s0='1')and (s1='0')report "test failed for 1110" severity error;

A0<='1';B0<='1';A1<='1';B1<='1';
wait for 20ns;
assert (CARRY='1') and (s0='0')and (s1='1')report "test failed for 1111" severity error;

end process;

end Behavioral;
