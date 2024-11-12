-- Contar todos os zeros de uma sequencia

library ieee;
use ieee.std_logic_1164.all;
use work.moecke.all;
 
entity leading_zeros_generate is
	generic
	( N	: natural  :=	4 );
	port
	(
		resultado	: out integer range 0 to 31;
		data : in integer_vector(0 to N-1)
	);
	
end entity;

--architecture ifsc_v1 of leading_zeros_generate is
--	signal tmp : integer_vector (0 to N);
--	
--begin
--
--	tmp(0) <= 0;
--	l1:for i in 1 to N generate
--			tmp(i) <= tmp(i-1) + 1 when data(i-1) = 0 else
--						tmp(i-1) + 0;
--	end generate;
--	
--				resultado <= tmp(N);
--
--end architecture;

architecture ifsc_v1 of leading_zeros_generate is
	signal tmp : integer_vector (0 to N);
begin

	tmp(0) <= 0;
	l1:for i in 1 to N generate
			tmp(i) <= tmp(i-1) + 1 when data(i-1) = 0 else
						tmp(i-1);
	end generate;
	
				resultado <= tmp(N);

end architecture;