-- clock 50MHz

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisorClock is
	generic(
		LIMIT : natural := 22;
		N: natural := 5 --log na base 2 de limite (0 a 31)
	);
	port(
		clk, reset, enable, stop: in std_logic;
		clk_out, enable_out: out std_logic
	);
end entity;

architecture contador of counter0to50m is

	signal r_reg: unsigned(N-1 downto 0);
	signal r_next: unsigned(N-1  downto 0);
	
begin

-- stop
-- max_pulse

-- enable - enable_out dura apenas 1 clock no final - em enable ele conta 
-- else r_reg <= r_reg


-- register
	process(clk,reset)
	begin
		if (reset='1') then
			r_reg <= (others=>'0');
		elsif (rising_edge(clk)) then  
				if (enable = '1') then
					r_reg <= r_next; 
				 else 
					r_reg <= r_reg;
				end if;	
		end if;
	end process;
	
	-- next-state logic
	r_next <= (others=>'0') when r_reg=(LIMIT-1) else r_reg + 1;
	
	
	-- output logic
	clk_out <= '0' when r_reg = to_unsigned(LIMIT-1,N) else '1';
	
	--- clk interno no process
	--  0 else clock (stop)

	
	
	
end architecture;