-- Exemplo 

library ieee;
use work.moecke.all;

entity somador_deas_generico is
	generic
	( N	: natural  :=	20 );
	port
	(
		a: in  integer_vector (0 to N-1);
		resultado	: out integer range 0 to 31
	);
	
end entity;

architecture ifsc_v1 of somador_deas_generico is
	signal tmp : integer_vector (0 to N);
	
begin

	tmp(0) <= 0;
	l1:for i in 1 to N generate
			tmp(i) <= tmp(i-1) + a(i-1);
	end generate;
	
--				tmp(1) <= tmp(0) + a(0);
--				tmp(2) <= tmp(1) + a(1);
--				tmp(3) <= tmp(2) + a(2);
--				tmp(4) <= tmp(3) + a(3);
				resultado <= tmp(N);

end architecture;



--architecture ifsc_v2 of somador_deas_generico is
--
--	--declaracao
--	type integer_vector is array(0 to N) of integer range 0 to 31;
--	signal tmp : integer_vector;
--	
--begin
--
--	tmp(0) <= 0;
----	l1:for i in 1 to N generate
----			tmp(i) <= tmp(i-1) + a(i-1);
----	end generate;
--
--			tmp(1) <= tmp(0) + a0;
--			tmp(2) <= tmp(1) + a1;
--			tmp(3) <= tmp(2) + a2;
--			tmp(4) <= tmp(3) + a3;
--			resultado <= tmp(4);
--
--end architecture;



