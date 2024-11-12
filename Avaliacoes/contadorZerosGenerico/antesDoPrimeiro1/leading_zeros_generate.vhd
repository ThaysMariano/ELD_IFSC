-- Contar todos os zeros de uma sequencia

library ieee;
 use ieee.std_logic_1164.all;
 
entity leading_zeros_generate is
	generic (N : natural := 8);
	port
		(	data : in std_logic_vector(0 to N-1);
			zeros	: out integer range 0 to N
		);
end entity;

architecture count_zeros of leading_zeros_generate is
 variable count : integer range 0 to N;
 variable aux : integer range 0 to N; 
	 begin
		 count <= 0;
		 aux <= 0;
		
		 
		 gerar: for i in 0 to N-1 generate
			count <= aux + 1 when data(i) = '0' else
						aux + 0;
		 end gerar;
		 
	zeros <= count;

end architecture;