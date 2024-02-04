library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux1x4_tb is
end entity demux1x4_tb;

architecture tb_arch of demux1x4_tb is
	signal inp: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	signal sel_tb: STD_LOGIC_VECTOR(1 downto 0) := "00";
	signal output_0: STD_LOGIC_VECTOR(7 downto 0);
	signal output_1: STD_LOGIC_VECTOR(7 downto 0);
	signal output_2: STD_LOGIC_VECTOR(7 downto 0);
	signal output_3: STD_LOGIC_VECTOR(7 downto 0);
begin
	UUT: entity work.demux1x4
	generic map (
	WIDTH => 8
	)
	
	port map (
	input => inp,
	sel => sel_tb,
	out0 => output_0,
	out1 => output_1,
	out2 => output_2,
	out3 => output_3
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
