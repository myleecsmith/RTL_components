library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_tb is
end entity reg_tb;

architecture tb_arch of reg_tb is
	signal input_data: STD_LOGIC_VECTOR(7 downto 0) := "11001100";
	signal output_data: STD_LOGIC_VECTOR(7 downto 0);
	signal clk: STD_LOGIC := '0';
	
	begin
		UUT: entity work.reg
		generic map (WIDTH => 8)
		
		port map (
		clk => clk,
		reset => '0', -- Assuming active-high synchronous reset
		D => input_data,
		Q => output_data);
		
		clk <= not clk after 10 ns;
process
	begin
		wait for 10 ns; -- Allow for some simulation time
		
		wait;
end process;
end architecture tb_arch;
