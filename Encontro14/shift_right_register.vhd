-- Contador J
 library ieee;
 use ieee.std_logic_1164.all;
 entity shift_right_register is
	port(
		clk, reset: in std_logic;
		q : buffer std_logic_vector(3 downto 0)
	);
 end shift_right_register;

 architecture two_seg_arch of shift_right_register is
	signal r_reg: std_logic_vector(3 downto 0);
	signal r_next: std_logic_vector(3 downto 0);
 begin
 
-- register
	process(clk,reset)
	begin
		if (reset='1') then
			r_reg <= (others=>'0');
		elsif (clk'event and clk='1') then
			r_reg <= r_next;
		end if;
	end process;
 
-- next-state logic (shift right 1 bit)
	r_next <= not r_reg(0) & r_reg(3 downto 1);
 
-- output
	q <= r_reg;
end two_seg_arch;