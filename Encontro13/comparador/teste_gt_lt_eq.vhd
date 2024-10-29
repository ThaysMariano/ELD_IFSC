-- comparar A e B
entity teste_gt_lt_eq is
	port (
		a : in integer range 0 to 15;
		b : in integer range 0 to 15;
		gt: buffer bit;
		lt: buffer bit;
		eq: buffer bit
		);
-- saida que pode ser lida
end entity;


architecture ifsc_v1 of teste_gt_lt_eq is
begin

process(a,b)
begin
-- if todos os sinais com valor
	eq<= '0';
	lt <= '0';
	gt <= '0';
	if (a>b) then
		gt <='1';
	elsif (a=b) then
		eq <= '1';
	else 
		lt <= '1';
	end if;
end process;

end architecture;


architecture ifsc_v2 of teste_gt_lt_eq is
begin

	eq<= '1' when (a=b) else '0';
	gt <= '1' when (a>b) else '0';
	lt <= '1' when (a<b) else '0';
	
end architecture;

configuration ifsc_cfg of teste_gt_lt_eq is
for ifsc_v1 end for;
-- for ifsc_v2 end for;
end configuration;


