-- Exemplo 

entity somador_deas is
	generic
	( N	: natural  :=	4 );
	port
	(
		a0, a1, a2, a3	: in  integer range 0 to 31;
		resultado	: out integer range 0 to 31
	);
	
end entity;

architecture ifsc_v1 of somador_deas is
	signal tmp0, tmp1, tmp2, tmp3, tmp4 : integer range 0 to 31;
begin

-- blocos individuais
	tmp0 <= 0;
	tmp1 <= tmp0 + a0;
	tmp2 <= tmp1 + a1;
	tmp3 <= tmp2 + a2;
	tmp4 <= tmp3 + a3;
	resultado <= tmp4;

end architecture;

architecture ifsc_v2 of somador_deas is
	signal tmp0, tmp1, tmp2, tmp3, tmp4 : integer range 0 to 31;
begin

-- blocos em pares
	tmp0 <= 0;
	tmp2 <= a1 +a0;
	tmp3 <= a2+ a3;
	tmp4 <= tmp3 + tmp2;
	resultado <= tmp4;
	
end architecture;

