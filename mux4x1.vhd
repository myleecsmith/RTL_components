library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is
generic (WIDTH : positive := 8);
	port(
		in0:in std_logic_vector(WIDTH-1 downto 0);
		in1:in std_logic_vector(WIDTH-1 downto 0);
		in2:in std_logic_vector(WIDTH-1 downto 0);
		in3:in std_logic_vector(WIDTH-1 downto 0);
		sel:in std_logic_vector(1 downto 0);
		output : out std_logic_vector(WIDTH-1 downto 0));
end mux4x1;

architecture mux of mux4x1 is
begin

	process(in0, in1, in2, in3, sel)
	begin

		if (sel(1) = '0' and sel(0) = '0') then
			output <= in0;
			
		elsif (sel(1) = '0' and sel(0) = '1') then
			output <= in1;
		
		elsif (sel(1) = '1' and sel(0) = '0') then
			output <= in2;
		
		else 
			output <= in3;
			
	end if;
end process;
end mux;