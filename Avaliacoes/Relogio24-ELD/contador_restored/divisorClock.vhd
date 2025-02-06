
-- clock 50MHz							

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisorClock is
	generic(
		MAX : natural := 22
	);
	port(
		clk, reset, stop: in std_logic;
		clk_out: out std_logic

	);
end entity;

architecture arquitetura of divisorClock is

-- funcao para o log2
	function log2c (n : integer) return integer is
		variable m, p : integer;
	begin 
		m := 0;
		p := 1;
		while p <n loop
			m := m+1;
			p := p*2;
		end loop;
	return m;
	end log2c;	
	
	-- sinais
	signal r_reg: unsigned(log2c(MAX)-1 downto 0);
	signal r_next: unsigned(log2c(MAX)-1  downto 0);
	signal clk_interno: std_logic;

begin

	-- clk 
	clk_interno <= '0' when (stop = '1') else clk;
	
-- register
	process(clk_interno,reset)
	begin
		if (reset='1') then
			r_reg <= (others=>'0');
		elsif (rising_edge(clk_interno)) then
			r_reg <= r_next;
		end if;
	end process;
	
	-- next-state logic
	r_next <= (others=>'0') when r_reg=(MAX-1) else r_reg + 1;
	
	-- output logic
	clk_out <= '0' when r_reg = to_unsigned(MAX-1,log2c(MAX)) else '1';
	

end architecture;



-- 	Adicionar
-- stop FEITO
-- zop FEITO

-- anotacoes

-- enable - enable_out dura apenas 1 clock no final
-- else r_reg <= r_reg


-- alterar as unidades e dezenas de cada um dos 3 grupos 
-- alterar cada numero 
-- alterar entre grupos
-- 1 ++     -- alterar grupo


