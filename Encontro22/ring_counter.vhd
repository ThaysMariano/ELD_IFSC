--=============================
-- Listing 9.8 ring counter
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity ring_counter is
	generic(
	N : natural := 7
	);
   port(
      clk, reset: in std_logic;
      q: out std_logic_vector(N-1 downto 0)
   );
end ring_counter;

architecture reset_arch of ring_counter is
   constant WIDTH: natural := N;
   signal r_reg: std_logic_vector(WIDTH-1 downto 0);
   signal r_next: std_logic_vector(WIDTH-1 downto 0);
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= (0=>'1', others=>'0');
      elsif (clk'event and clk='1') then
         r_reg <= r_next;
      end if;
   end process;
   -- next-state logic
   r_next <= (not r_reg(0)) & r_reg(WIDTH-1 downto 1);	--not cria o J
   -- output logic
   q <= r_reg;
end reset_arch;

