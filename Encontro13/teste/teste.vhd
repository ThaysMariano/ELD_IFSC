entity teste is
	port
	(
	b : in bit;
	a : out integer range 0 to 15
	);
end entity;

architecture ifsc of teste is

begin
	process(b)
	begin
		a<= 0;
		a<=15;
	end process;
end ifsc;




-- sem process da curto
-- com process pega a ultima atribuicao
