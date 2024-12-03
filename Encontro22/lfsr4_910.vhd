--=============================
-- Listing 9.10 LFSR
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity lfsr4_910 is
	generic(
	N : natural :=7
	);
   port(
      clk, reset: in std_logic;
      q: out std_logic_vector(N-1 downto 0)
   );
end lfsr4_910;

architecture no_zero_arch of lfsr4_910 is
   signal r_reg, r_next: std_logic_vector(N-1 downto 0);
   signal fb: std_logic;
   constant SEED : std_logic_vector(N-1 downto 0) := "0000010"; --SEED 2
	
	-- primeira pos. recebe 1 outras 0
	--7 => (3|0=> '1' others=>'0')
	
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= SEED;       --semente entra apos o reset
      elsif (clk'event and clk='1') then
         r_reg <= r_next;
      end if;
   end process;
   -- next-state logic
   fb <= r_reg(3) xor r_reg(0);
   r_next <= fb & r_reg(N-1 downto 1);
   -- output logic
   q <= r_reg;
end no_zero_arch;
