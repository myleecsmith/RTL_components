library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity encoder_tb is
end entity encoder_tb;

architecture tb_arch of encoder_tb is
	signal input_vector	:	std_logic_vector(7 downto 0) := "00000000";
	signal encoded_output: std_logic_vector(2 downto 0);
	
	begin

		UUT: entity work.encoder
	
		port map (
			inputs => input_vector,
			result => encoded_output);
	
			process
			begin
	
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "00000001";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "00000010";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "00000100";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "00001000";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "00010000";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "00100000";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "01000000";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "10000000";
				wait for 10 ns; -- Allow for some simulation time

				wait;
		
			end process;
end architecture;
