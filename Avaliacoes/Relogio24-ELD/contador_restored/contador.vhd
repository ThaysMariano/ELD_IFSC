-- Contador relógio 23 59 59				

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
	generic(
		-- Limites
		D : natural := 2; 
		U : natural := 3  
	);
	port(
		clk, reset: in std_logic;
		uni, dez: out std_logic_vector(3 downto 0);
		clk_out: out std_logic;
		up, down : in std_logic
	);
end entity;

architecture arquitetura_contador of contador is

-- sinais
	signal reg_uni,  reg_dez: unsigned(3 downto 0) := (others => '0');
	signal next_uni, next_dez: unsigned(3 downto 0);
	
begin

	process(clk, reset)
	
	begin
	
		if reset = '1' then
			reg_uni<= (others => '0');
			reg_dez <= (others => '0');
		elsif rising_edge(clk) then
			

			-- (?)
-- Se botao Up=1, Se uni=Max, add na dezena, se não add na unidade
-- Se botao Down=1, Se uni=0, diminui da dezena, se não diminui da unidade
-- Se nenhum botao ativo, segue a contagem normal
			
   		if up = '1' then 
				if reg_uni <= U then
					reg_dez <= next_dez+1;
				else 
					reg_uni <= reg_uni +1;
				end if;
			elsif down = '1' then
				if reg_uni <= '0'
					reg_dez <= next_dez -1;
				else 
					reg_uni <= reg_uni-1;
			elsif up = '0' and down = '0' then
				reg_uni<= next_uni;
				reg_dez<= next_dez;
			end if;
			
		end if;
	end process;
	
	
	
	

	-- unidade
	next_uni <= (reg_uni + 1) when (reg_uni< 9 and (reg_dez/= D or reg_uni/= U)) else 
		(others => '0');
		
		
	-- dezena
	next_dez <= (reg_dez+ 1) when (reg_uni= 9 and reg_dez< D) else 
		(others => '0') when (reg_uni= U and reg_dez= D) else 
		reg_dez; 
		

	-- clk_out
	clk_out <= '0' when (reg_dez= D and reg_uni= U) else '1';
	
	
	

	-- saídas
	uni <= std_logic_vector(reg_uni);
	dez<= std_logic_vector(reg_dez);
	
	

end architecture;


-- Pode escolher as dezenas e unidades para iniciar por meio de dois botoes, alterar opcao e ++
-- um botao para selecionar os displays, cada 1 troca o grupo de displays


