----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/17/2017 02:23:13 PM
-- Design Name: 
-- Module Name: adder_block_simulation - Behavioral
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

entity adder_block_simulation is
--  Port ( );
end adder_block_simulation;

architecture Behavioral of adder_block_simulation is

component design_1_wrapper is
port (     a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           carry : out STD_LOGIC;
           s0 : out STD_LOGIC;
           s1 : out STD_LOGIC);
end component;


signal a0,b0,a1,b1: std_logic:= '0';
signal carry,s0,s1: std_logic;

begin
UUT: design_1_wrapper port map( a0=>a0, b0=>b0, a1=>a1, b1=>b1, carry=>carry, s0=>s0, s1=>s1);

stimuli: process
begin

a0<='0';b0<='0';a1<='0';b1<='0';
wait for 20ns;
assert (carry='0') and (s0='0')and (s1='0')report "test failed for 0000" severity error;

a0<='0';b0<='1';a1<='0';b1<='0';
wait for 20ns;
assert (carry='0') and (s0='1')and (s1='0')report "test failed for 0001" severity error;

a0<='0';b0<='0';a1<='0';b1<='1';
wait for 20ns;
assert (carry='0') and (s0='0')and (s1='1')report "test failed for 0010" severity error;

a0<='0';b0<='1';a1<='0';b1<='1';
wait for 20ns;
assert (carry='0') and (s0='1')and (s1='1')report "test failed for 0011" severity error;

a0<='1';b0<='0';a1<='0';b1<='0';
wait for 20ns;
assert (carry='0') and (s0='1')and (s1='0')report "test failed for 0100" severity error;

a0<='1';b0<='1';a1<='0';b1<='0';
wait for 20ns;
assert (carry='0') and (s0='0')and (s1='1')report "test failed for 0101" severity error;

a0<='1';b0<='0';a1<='0';b1<='1';
wait for 20ns;
assert (carry='0') and (s0='1')and (s1='1')report "test failed for 0110" severity error;

a0<='1';b0<='1';a1<='0';b1<='1';
wait for 20ns;
assert (carry='1') and (s0='0')and (s1='0')report "test failed for 0111" severity error;

a0<='0';b0<='0';a1<='1';b1<='0';
wait for 20ns;
assert (carry='0') and (s0='0')and (s1='1')report "test failed for 1000" severity error;

a0<='0';b0<='1';a1<='1';b1<='0';
wait for 20ns;
assert (carry='0') and (s0='1')and (s1='1')report "test failed for 1001" severity error;

a0<='0';b0<='0';a1<='1';b1<='1';
wait for 20ns;
assert (carry='1') and (s0='0')and (s1='0')report "test failed for 1010" severity error;

a0<='0';b0<='1';a1<='1';b1<='1';
wait for 20ns;
assert (carry='1') and (s0='1')and (s1='0')report "test failed for 1011" severity error;

a0<='1';b0<='0';a1<='1';b1<='0';
wait for 20ns;
assert (carry='0') and (s0='1')and (s1='1')report "test failed for 1100" severity error;

a0<='1';b0<='1';a1<='1';b1<='0';
wait for 20ns;
assert (carry='1') and (s0='0')and (s1='0')report "test failed for 1101" severity error;

a0<='1';b0<='0';a1<='1';b1<='1';
wait for 20ns;
assert (carry='1') and (s0='1')and (s1='0')report "test failed for 1110" severity error;

a0<='1';b0<='1';a1<='1';b1<='1';
wait for 20ns;
assert (carry='1') and (s0='0')and (s1='1')report "test failed for 1111" severity error;

end process;

end Behavioral;
