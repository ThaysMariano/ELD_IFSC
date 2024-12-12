
-- clock 50MHz							

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisorClock is
	generic(
		MAX : natural := 22
	);
	port(
		clk, reset: in std_logic;
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
	

begin


-- register
	process(clk,reset)
	begin
		if (reset='1') then
			r_reg <= (others=>'0');
		elsif (clk'event and clk='1') then
			r_reg <= r_next;
		elsif (clk'event and clk='1') then  
              r_reg <= r_next; 
		end if;
	end process;
	
	-- next-state logic
	r_next <= (others=>'0') when r_reg=(MAX-1) else r_reg + 1;
	
	
	-- output logic
	clk_out <= '0' when r_reg = to_unsigned(MAX-1,log2c(MAX)) else '1';
	

end architecture;



-- 	Adicionar
-- stop
-- max_pulse
-- corrigir o zop no relogio


-- anotacoes

-- enable - enable_out dura apenas 1 clock no final
-- else r_reg <= r_reg

-- clk interno no process
--  0 else clock (stop)

-- '0' when (stop = '1') else reg_dezena

-- '0' when (stop = '1') else reg_unidade


