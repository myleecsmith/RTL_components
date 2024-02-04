library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port (
		inputs :in  std_logic_vector(2 downto 0);
		result : out std_logic_vector(7 downto 0));
end decoder;

architecture decoder_8in of decoder is
begin

	process(inputs)
	begin
		case (inputs) is
            when "000" => result <= "00000001";
            when "001" => result <= "00000010";
            when "010" => result <= "00000100";
            when "011" => result <= "00001000";
            when "100" => result <= "00010000";
            when "101" => result <= "00100000";
            when "110" => result <= "01000000";
            when "111" => result <= "10000000";
            when others => result <= "ZZZZZZZZ";
        end case;
end process;
end decoder_8in;