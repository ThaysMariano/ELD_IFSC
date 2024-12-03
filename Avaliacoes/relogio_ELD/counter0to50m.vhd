-- clock 50MHz

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter0to50m is
	generic(
		LIMIT : natural := 22;
		N_BITS: natural := 5 --log na base 2 de limite (0 a 31)
	);
	port(
		clk, reset: in std_logic;
		clk_out: out std_logic
	);
end entity;

architecture contador of counter0to50m is

	signal r_reg: unsigned(N_BITS-1 downto 0);
	signal r_next: unsigned(N_BITS-1  downto 0);
	
begin

-- register
	process(clk,reset)
	begin
		if (reset='1') then
			r_reg <= (others=>'0');
		elsif (clk'event and clk='1') then
			r_reg <= r_next;
		end if;
	end process;
	
	-- next-state logic
	r_next <= (others=>'0') when r_reg=(LIMIT-1) else r_reg + 1;
	
	-- output logic
	clk_out <= '0' when r_reg = to_unsigned(LIMIT-1,N_BITS) else '1';
end architecture;