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
	signal aux : integer_vector  (0 to N);
	
	begin

	--							0 0 0 1 0 0 1 0     -> 3
	tmp(0) <= 0;
	aux<=0;
	l1: for i in 1 to N generate 
		tmp(i) <= i when data(i-1) = 1 else
						0;
			end generate;
			
			l2: for i in 1 to N generate
				aux(N) <= i when data(i-1) =1 else
						0;
					end generate;
			
			-- 0 0 0 4 0 0 7 0
			
	
--	N-data(i)-1 <- data i sendo o primeiro 1
	
	
				resultado <= tmp(N)-aux(N);

end architecture;