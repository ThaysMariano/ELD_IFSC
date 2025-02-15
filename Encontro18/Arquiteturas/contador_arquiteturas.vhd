-- Contador com duas arquiteturas 14/11

library ieee;
 use ieee.std_logic_1164.all;

entity contador_arquiteturas is
	generic
	(
		MIN : natural := 3;
		MAX : natural := 21
--		UPDOWN : natural := 0 -- 0 => up; 1 => down
	);
	port
	(
		clk, rst		   : in std_logic;
		count_out   : out integer range MIN to MAX
	);
end entity;

architecture ifsc_up of contador_arquiteturas is
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
					end if;-- Contador com duas arquiteturas 14/11

library ieee;
 use ieee.std_logic_1164.all;

entity contador_arquiteturas is
	generic
	(
		MIN : natural := 3;
		MAX : natural := 21
--		UPDOWN : natural := 0 -- 0 => up; 1 => down
	);
	port
	(
		clk, rst		   : in std_logic;
		count_out   : out integer range MIN to MAX
	);
end entity;

architecture ifsc_up of contador_arquiteturas is
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
			count_out <= cnt;
		end process;
	
	end architecture;
	
architecture ifsc_down of	contador_arquiteturas is
begin

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
			count_out <= cnt;
		end process;	

end architecture;

configuration ifsc_config of contador_arquiteturas is
	for ifsc_down end for;
--	for ifsc_up end for;
end configuration;
			end if;
			count_out <= cnt;
		end process;
	
	end architecture;
	
architecture ifsc_down of	contador_arquiteturas is
begin

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
			count_out <= cnt;
		end process;	

end architecture;

configuration ifsc_config of contador_arquiteturas is
	for ifsc_down end for;
--	for ifsc_up end for;
end configuration;