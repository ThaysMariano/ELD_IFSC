-- Contador relógio 23 59 59

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter0tox is
	generic(
		-- Limites
		D : natural := 5; 
		U : natural := 9  
	);
	port(
		clk, reset: in std_logic;
		unidade: out std_logic_vector(3 downto 0);
		dezena: out std_logic_vector(3 downto 0);
		clk_out : out std_logic
	);
end entity;

architecture counter0tox_arch of counter0tox is
	signal reg_unidade: unsigned(3 downto 0) := (others => '0');
	signal reg_dezena: unsigned(3 downto 0) := (others => '0');
	signal next_unidade: unsigned(3 downto 0);
	signal next_dezena: unsigned(3 downto 0);
	
begin
	-- Processo síncrono para atualizar os registradores
	process(clk, reset)
	
	begin
		if reset = '1' then
			reg_unidade <= (others => '0');
			reg_dezena <= (others => '0');
		elsif rising_edge(clk) then
			reg_unidade <= next_unidade;
			reg_dezena <= next_dezena;
		end if;
	end process;

	-- Próximo valor da unidade
	next_unidade <= 
		(reg_unidade + 1) when (reg_unidade < 9 and (reg_dezena /= D or reg_unidade /= U)) else -- + até U
		(others => '0'); -- Zera em D e U
		
		
			-- '0' when (stop = '1') else reg_unidade
		
		

	-- Próximo valor da dezena
	next_dezena <= 
		(reg_dezena + 1) when (reg_unidade = U and reg_dezena < D) else -- + em u
		(others => '0') when (reg_unidade = U and reg_dezena = D) else -- Reinicia no limite
		reg_dezena; -- Mantem
		
		
			-- '0' when (stop = '1') else reg_dezena
		
		
		-- clk_out
		clk_out <= '0' when (reg_dezena = D and reg_unidade = U) else '1';

	-- Std_logic_vector nas saídas
	unidade <= std_logic_vector(reg_unidade);
	dezena <= std_logic_vector(reg_dezena);

end architecture;


