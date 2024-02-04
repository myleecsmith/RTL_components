library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder_tb is
end entity decoder_tb;

architecture tb_arch of decoder_tb is
	signal input_vector	:	std_logic_vector(2 downto 0) := "000";
	signal decoded_output: std_logic_vector(7 downto 0);
	
	begin

		UUT: entity work.decoder
	
		port map (
			inputs => input_vector,
			result => decoded_output);
	
			process
			begin
	
				wait for 10 ns; -- Allow for some simulation times
				
				input_vector <= "001";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "010";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "011";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "100";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "101";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "110";
				wait for 10 ns; -- Allow for some simulation time
				
				input_vector <= "111";
				wait for 10 ns; -- Allow for some simulation time
				
				wait;
		
			end process;
end architecture;
