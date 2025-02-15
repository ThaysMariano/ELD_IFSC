-- registrador com N FF_D usando FOR GENERATE -05/11
library ieee;
 use ieee.std_logic_1164.all;
entity oun is
	generic ( N : natural := 4);
	port 	(
		a: in std_logic_vector(N-1 downto 0);
		ou : out std_logic
		);
end entity;

architecture ifsc of oun is
	signal b: std_logic_vector(N downto 0);
begin
 
--	label1: 
--	for k in N-1 downto 0 generate
--		-- d(i) <= q(i+1)     -i(3...0)
--		d(k) <= q(k+1);
--	end generate;


		-- na mao:
	
	b(0) <= '0';
	b(1) <= b(0) or a(0);
	b(2) <= b(1) or a(1);
	b(3) <= b(2) or a(2);
	b(4) <= b(3) or a(3);
	

	--output	
	ou <= b(N);
	
	
end architecture;