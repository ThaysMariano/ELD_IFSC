-- Contador com opcoes 14/11

library ieee;
 use ieee.std_logic_1164.all;

entity contador_up_down_pino is
	generic
	(
		MIN : natural := 3;
		MAX : natural := 21
	);
	port
	(
		clk, rst		   : in std_logic;
		UPDOWN : natural := 1; -- 0 => up; 1 => down
		count_out   : out integer range MIN to MAX
	);
end entity;

architecture ifsc_v1 of contador_up_down_pino is

	signal cnt_down, cnt_up : integer range MIN to MAX;
	
begin

		process (clk, rst)
			variable cnt : integer range MIN to MAX;
		begin
			if rst = '1' then
				cnt := MIN;
			elsif (rising_edge(clk)) then
					if cnt = MAX then
						cnt := MIN;
					else
						cnt := cnt + 1;
					end if;
			end if;
			cnt_up <= cnt;
		end process;

		
		process (clk, rst)
			variable cnt : integer range MIN to MAX;
		begin
			if rst = '1' then
				cnt := MAX;
			elsif (rising_edge(clk)) then
					if cnt = MIN then
						cnt := MAX;
					else
						cnt := cnt - 1;
					end if;
			end if;
			cnt_down <= cnt;
		end process;	
count_out <= cnt_up when UPDOWN=1 else cnt_down;
end architecture;


-- Mux: When else
