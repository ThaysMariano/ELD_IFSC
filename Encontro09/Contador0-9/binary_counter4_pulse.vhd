-- Contador 9 a 0
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binary_counter4_pulse is
	port(
		clk, reset: in std_logic;
		fire: out std_logic;
		q: out std_logic_vector(3 downto 0)
	);
end binary_counter4_pulse;

architecture two_seg_arch of binary_counter4_pulse is
	signal r_reg: unsigned(3 downto 0); 
	signal r_next: unsigned(3 downto 0);
 begin
 
 -- register
 process(clk,reset)
	begin
	if (reset='1') then
		r_reg <= "1001";  
	elsif (clk'event and clk='1') then
		r_reg <= r_next;
	end if;
end process;

 -- next-state logic
 r_next <= (others => '0') when r_reg = "0000" else r_reg - 1;
		
 
 -- output logic
  q <= std_logic_vector(r_reg);
  fire <= '1' when r_reg="0000" else
	'0';
	
end two_seg_arch;