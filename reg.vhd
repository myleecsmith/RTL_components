library ieee;
use ieee.std_logic_1164.all;

entity reg is
generic (WIDTH : positive := 8);
PORT (clk, reset : in std_logic;
		D : in std_logic_vector(WIDTH-1 downto 0);
		Q : out std_logic_vector(WIDTH-1 downto 0));
end reg;

architecture d_ff of reg is
begin
process(clk, reset)
	begin
		if(reset = '1') then
			Q <= (others => '0');
		
		elsif(clk'event and clk = '0') then
			Q <= D;
	
	end if;
end process;
end;