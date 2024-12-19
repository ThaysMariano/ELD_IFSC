-- display de segmentos 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd2ssd is
	generic(
		CC_ACn	: natural  :=	0
	);
	
	port(
		bcd	: in  std_logic_vector(3 downto 0);
		dPin, zop	: in	std_logic;
		ssd	: out std_logic_vector(6 downto 0);
		dPout		: out std_logic
	);
end entity;

architecture seven_segments of bcd2ssd is
	signal ssdInterno: std_logic_vector(6 downto 0);
begin

--decidir
L1: if CC_ACn = 1  generate
	ssd <= ssdInterno;
	dPout <= dPin;
end generate;

L2: if CC_ACn = 0  generate
	ssd <= not(ssdInterno);
	dPout <= not(dPin);
end generate;	
	
	-- corrigir

ssdInterno <= 
	"0111111" when (bcd = "0000" and zop = '1') else
	"0000110" when bcd = "0001" else
	"1011011" when bcd = "0010" else 	
	"1001111" when bcd = "0011" else 	
	"1100110" when bcd = "0100" else 	
	"1101101" when bcd = "0101" else 	
	"1111101" when bcd = "0110" else 	
	"0000111" when bcd = "0111" else 	
	"1111111" when bcd = "1000" else 	
	"1101111" when bcd = "1001" else
	"0000000";
	

end architecture;
