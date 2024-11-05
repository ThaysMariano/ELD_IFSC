-- registrador com N FF_D usando FOR GENERATE -05/11
library ieee;
 use ieee.std_logic_1164.all;
entity shift_reg is
	generic ( N : natural := 4);
	port 	(
		clock, reset : in  std_LOGIC;
		d_in:  in std_LOGIC;
		q_out : out std_LOGIC);
end entity;

architecture ifsc_v1 of shift_reg is
	signal d: std_logic_vector(N-1 downto 0);
	signal q: std_logic_vector(N downto 0);
begin
	--register    <- equivale a 4 flipflops
   process(clock,reset)
	begin
		if (reset='1') then
			q(N-1 downto 0) <= (others=>'0');
		elsif (clock'event and clock='1') then
			q(N-1 downto 0) <= d;
		end if;
	end process;
	
	--next-state    -concatenacao 
	label1: 
	for k in N-1 downto 0 generate
		-- d(i) <= q(i+1)     -i(3...0)
		d(k) <= q(k+1);
	end generate;
		q(N) <= d_in;
--		d(3) <= q(4);
--		d(2) <= q(3);
--		d(1) <= q(2);
--		d(0) <= q(1);
	
	--output	
	q_out <= q(0);
	
	
end architecture;