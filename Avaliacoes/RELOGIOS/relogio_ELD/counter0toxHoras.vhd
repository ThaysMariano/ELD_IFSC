-- Contador relógio 23 59 59

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter0toxHoras is
	generic(
		-- Limites
		D : natural := 2; 
		U : natural := 9  
	);
	port(
		clk, reset: in std_logic;
		unidade: out std_logic_vector(3 downto 0);
		dezena: out std_logic_vector(3 downto 0)
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
		(reg_unidade + 1) when (reg_unidade < U and (reg_dezena /= D or reg_unidade /= U)) else 
		(others => '0') when (reg_unidade = 2 and reg_dezena = 3);

	-- Próximo valor da dezena
	next_dezena <= 
		(reg_dezena + 1) when (reg_unidade = U and reg_dezena < D) else 
		(others => '0') when (reg_unidade = U and reg_dezena = D) else 
		reg_dezena;

	-- Std_logic_vector nas saídas
	unidade <= std_logic_vector(reg_unidade);
	dezena <= std_logic_vector(reg_dezena);

end architecture;


