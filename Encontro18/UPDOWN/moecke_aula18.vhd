library ieee;
use ieee.std_logic_1164.all;

entity moecke_aula18 is
 port(
	clk_top, rst_top : in std_logic;
	count_up_top, count_down_top : out integer
 );

end entity;

architecture ifsc_top of moecke_aula18 is
	component contador_up_down is
		generic								
		(MIN : natural := 3;
			MAX : natural := 21;
			UPDOWN : natural := 0 -- 0 => up; 1 => down
		);
		port
		(clk, rst		   : in std_logic;
			count_out   : out integer range MIN to MAX
		);
	end component;

begin

-- instanciacao por nome  CIMA
	U1: contador_up_down is						
		generic map							
		(MIN => 0,
		 MAX => 8,
		 UPDOWN => 0
		)
		port map
		(clk => clk_top, 
		 rst => rst_top,
		 count_out  => count_up_top
		);
		
-- instanciacao por posicao (ordem de declaracao) BAIXO  	
		U2: contador_up_down is						
		generic map							
		(0,
		 18,
		 1)
		port map
		(clk_top, 
		 rst_top,
		 count_down_top);
		
end architecture;