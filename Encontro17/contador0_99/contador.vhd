library ieee;
 use ieee.std_logic_1164.all;
 
entity contador is
	generic (N : natural := 8);
	port(
        clk,reset: in std_logic;
        dezena, unidade: buffer integer 0 to 9
        );
end entity;

architecture ifsc_v1 of contador is

	signal count1 : integer 0 to 9;
	signal count2 : integer 0 to 9;
	
begin
	count1 := 0;
	coutn2 := 0;

process(clk, reset)

    begin
        if (reset='1') then
            unidade <= 0;
				dezena <= 0;
        elsif (clk'event and clk='1') then
            unidade <= count1 + 1
        end if;
    end process;

end architecture;