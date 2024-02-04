library ieee;
use ieee.std_logic_1164.all;

entity demux1x4 is
generic (WIDTH : positive := 8);
	port(
		input : in std_logic_vector(WIDTH-1 downto 0);
		sel : in std_logic_vector(1 downto 0);
		out0 : out std_logic_vector(WIDTH-1 downto 0);
		out1 : out std_logic_vector(WIDTH-1 downto 0);
		out2 : out std_logic_vector(WIDTH-1 downto 0);
		out3 : out std_logic_vector(WIDTH-1 downto 0));
end demux1x4;

architecture demux of demux1x4 is
begin

	process(input, sel)
	begin
		--init all outputs to high z
		out0 <= "ZZZZZZZZ";
		out1 <= "ZZZZZZZZ";
		out2 <= "ZZZZZZZZ";
		out3 <= "ZZZZZZZZ";

		if (sel(1) = '0' and sel(0) = '0') then
			out0 <= input;
			
		elsif (sel(1) = '0' and sel(0) = '1') then
			out1 <= input;
		
		elsif (sel(1) = '1' and sel(0) = '0') then
			out2 <= input;
		
		else
			out3 <= input;
			
	end if;
end process;
end demux;