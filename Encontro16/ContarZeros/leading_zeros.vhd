-- quantos zeros tem em um vetor de entrada Data antes do primeiro bit '1'  07/11

library ieee;
 use ieee.std_logic_1164.all;
entity leading_zeros is
	generic (N : natural := 8);
	port
		(	data : in std_logic_vector(0 to N-1);
			zeros	: out integer range 0 to N
		);
end entity;

architecture ifsc_v1 of leading_zeros is

begin
	process (data)
	variable count : integer range 0 to N;
	begin
		count := 0;
		for i in data'range loop
			case data(i) is
				when '0' => count := count + 1;
				when others => exit;
			end  case;
		end loop;
		zeros <= count;
	end process;
end architecture;

architecture ifsc_v2 of leading_zeros is

begin 
	process (data)
	begin 
	if data(0) = '1' then zeros <= 0; elsif
	 data(1) = '1' then zeros <= 1; elsif
    data(2) = '1' then zeros <= 2; elsif
	 data(3) = '1' then zeros <= 3; elsif
	 data(4) = '1' then zeros <= 4; elsif
    data(5) = '1' then zeros <= 5; elsif
	 data(6) = '1' then zeros <= 6; elsif
	 data(7) = '1' then zeros <= 7; else
	 zeros<= 8;
	 
	end if;
	end process;
end architecture;

-- terceira arq feita pelo chatgpt

configuration config of leading_zeros is
FOR ifsc_v1 END FOR;
--FOR ifsc_v2 END FOR;
end config;
	
		
