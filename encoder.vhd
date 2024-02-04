library ieee;
use ieee.std_logic_1164.all;

entity encoder is
	port (
		inputs :in  std_logic_vector(7 downto 0);
		result : out std_logic_vector(2 downto 0));
end encoder;

architecture priority_encoder_8in of encoder is
begin

	process(inputs)
	begin
		if (inputs(7) = '1') then
			result <= "111";
	
		elsif (inputs(6) = '1') then
			result <= "110";
				
		elsif (inputs(5) = '1') then
			result <= "101";

		elsif (inputs(4) = '1') then
			result <= "100";

		elsif (inputs(3) = '1') then
			result <= "011";
			
		elsif (inputs(2) = '1') then
			result <= "010";
			
		elsif (inputs(1) = '1') then
			result <= "001";
			
		elsif (inputs(0) = '1') then
			result <= "000";
			
		else
			result <= "ZZZ";
			
	end if;
end process;
end priority_encoder_8in;