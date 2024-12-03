

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all

entity relogio is
        generic
        (
            CC_ACn: natural := 1
        );
        
	port
	(
		-- Input ports
		clk_50MHz : in std_logic;
		rst : in std_logic;

		-- Output ports
		SSD_UNIHH : out std_logic_vector(6 downto 0);
		SSD_DEZHH : out std_logic_vector(6 downto 0);
		SSD_UNIMM : out std_logic_vector(6 downto 0);
		SSD_DEZMM : out std_logic_vector(6 downto 0);
		SSD_UNISS : out std_logic_vector(6 downto 0);
		SSD_DEZSS : out std_logic_vector(6 downto 0)
	);
end entity;


architecture top_level of relogio is

--Declarando componentes que serao usados

	component bcd2ssd is
		generic(
			CC_ACn	: natural  :=	1
		);
		
		port(
			BCD	: in  std_logic_vector(3 downto 0);
			ZOP	: in 	std_logic;
			DPin	: in	std_logic;
			SSD	: out std_logic_vector(6 downto 0);
			DPout		: out std_logic
		);
	end component;

	component counter0to50m is
		generic(
			LIMIT : natural := 22;
			N_BITS: natural := 5 --log na base 2 de limite (0 a 31)
		);
		port(
			clk, reset: in std_logic;
			clk_out: out std_logic
		);
	end component;

	component counter0tox is
		generic(
			-- Limites
			D : natural := 5; 
			U : natural := 9  
		);
		port(
			clk, reset: in std_logic;
			unidade: out std_logic_vector(3 downto 0);
			dezena: out std_logic_vector(3 downto 0)
		);
	end component;
	
	--declarando fios internos
	
	signal clk_1sec, clk_1min, clk_1hr : std_logic;
	signal bcd_unihh, bcd_dezhh, bcd_unimm, bcd_dezmm, bcd_uniss, bcd_dezss : std_logic_vector(3 downto 0);
	
	
	
	
	



