library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_tb is
end entity mux_tb;

architecture tb_arch of mux_tb is
	signal inp0: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	signal inp1: STD_LOGIC_VECTOR(7 downto 0) := "00000001";
	signal inp2: STD_LOGIC_VECTOR(7 downto 0) := "00000010";
	signal inp3: STD_LOGIC_VECTOR(7 downto 0) := "00000011";
	signal sel_tb: STD_LOGIC_VECTOR(1 downto 0) := "00";
	signal output_data: STD_LOGIC_VECTOR(7 downto 0);
begin
	UUT: entity work.mux4x1
	generic map (
	WIDTH => 8
	)
	
	port map (
	in0 => inp0,
	in1 => inp1,
	in2 => inp2,
	in3 => inp3,
	sel => sel_tb,
	output => output_data
	);
	
process
begin
	wait for 10 ns; -- Allow for some simulation time
	
	sel_tb <= "01";
	wait for 10 ns; -- Allow for some simulation time
	
	sel_tb <= "10";
	wait for 10 ns; -- Allow for some simulation time
	
	sel_tb <= "11";
	wait for 10 ns; -- Allow for some simulation time
	
	wait;
	
end process;
end architecture tb_arch;
