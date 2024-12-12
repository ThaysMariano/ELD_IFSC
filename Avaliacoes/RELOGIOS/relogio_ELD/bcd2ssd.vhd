-- display de segmentos 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd2ssd is
	generic(
		CC_ACn	: natural  :=	1
	);
	
	port(
		BCD	: in  std_logic_vector(3 downto 0);
		ZOP	: in 	std_logic;
		DPin	: in	std_logic;
		SSD	: out std_logic_vector(6 downto 0);
		DPout		: out std_logic
	);
end entity;

architecture seven_segments of bcd2ssd is
	signal ssd_int: std_logic_vector(6 downto 0);
begin



L1: if CC_ACn = 1  generate
	SSD <= ssd_int;
	DPout <= DPin;
end generate;

L2: if CC_ACn = 0  generate
	SSD <= not(ssd_int);
	DPout <= not(DPin);
end generate;	
	

ssd_int <= 
	"1111110" when (BCD = "0000" and ZOP = '1') else
	"0110000" when BCD = "0001" else
	"1101101" when BCD = "0010" else 	
	"1111001" when BCD = "0011" else 	
	"0110011" when BCD = "0100" else 	
	"1011011" when BCD = "0101" else 	
	"1011111" when BCD = "0110" else 	
	"1110000" when BCD = "0111" else 	
	"1111111" when BCD = "1000" else 	
	"1111011" when BCD = "1001" else
	"0000000";
	

end architecture;

