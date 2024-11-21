library ieee;
use ieee.std_logic_1164.all;

entity display is
	generic(
	 CC_ACn : natural :=1  -- '1' para anodo comum, '0' para catodo comum
	  );
	port (
		bcd : in std_logic_vector(3 downto 0);
		ssd : out std_logic_vector(6 downto 0)
		);
end entity;

architecture ifsc_v of display is
signal ssd_int : std_logic_vector(6 downto 0);

begin 

-- a b c d e f g

	with bcd select 
	ssd_int <= "1111110" when "0000",
			   "0110000" when "0001",
				"1101101" when "0010",
				"1111001" when "0011",
				"0110011" when "0100",
				"1011011" when "0101",
				"1011111" when "0110",
				"1110000" when "0111",
				"1111111" when "1000",
				"1111011" when "1001";
				
	-- se CC_ACn = 1 anodo comum, = 0 catodo comum
				
	L1: if CC_ACn=0 generate
			ssd <= ssd_int;
		else 
			ssd <= not(ssd_int);
	end generate;
	
	-- se z_out = 1 exibir zeros, = 0 ocultar
	
		
	
end architecture;	
			
	
		