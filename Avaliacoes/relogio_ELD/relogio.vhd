-- unindo as partes

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity relogio is
   generic(
      CC_ACn : natural := 1
   );
        
	port
	(
		-- Input ports
		clk_50MHz : in std_logic;
		rst : in std_logic;
		stop: in std_logic;
		zopIn: in std_logic;

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
			N_BITS: natural := 5 --log na base 2 limite (0 a 31)
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
			dezena: out std_logic_vector(3 downto 0);
			clk_out : out std_logic
		);
	end component;
	
	--declarando fios internos
	
	signal clk_1sec, clk_1min, clk_1hr : std_logic;
	signal bcd_unihh, bcd_dezhh, bcd_unimm, bcd_dezmm, bcd_uniss, bcd_dezss : std_logic_vector(3 downto 0);

	begin

	--clock
    U1: counter0to50m
        generic map (
            LIMIT => 7, 
            N_BITS => 3 
        )
        port map (
            clk => clk_50MHz,
            reset => rst,
            clk_out => clk_1sec
        );

    --BCD segundos
    U2: counter0tox
        generic map (
            D => 5, 
            U => 9  
        )
        port map (
            clk => clk_1sec,
            reset => rst,
            unidade => bcd_uniss,
            dezena => bcd_dezss,
				clk_out => clk_1min
        );

    -- BCD minutos
    U3: counter0tox
        generic map (
            D => 5, 
            U => 9  
        )
        port map (
            clk => clk_1min,
            reset => rst,
            unidade => bcd_unimm,
            dezena => bcd_dezmm,
				clk_out => clk_1hr
        );

    -- BCD horas
    U4: counter0tox
        generic map (
            D => 2, 
            U => 3  
        )
        port map (
            clk => clk_1hr,
            reset => rst,
            unidade => bcd_unihh,
            dezena => bcd_dezhh,
				clk_out => open
        );

    -- Display de 7 segmentos
    -- U segundos
    U5: bcd2ssd
        generic map (
            CC_ACn => 1
        )
        port map (
            BCD => bcd_uniss,
            ZOP => '0',
            DPin => '0',
            SSD => SSD_UNISS,
            DPout => open
        );

    -- D segundos
    U6: bcd2ssd
        generic map (
            CC_ACn => 1
        )
        port map (
            BCD => bcd_dezss,
            ZOP => '0',
            DPin => '0',
            SSD => SSD_DEZSS,
            DPout => open
        );

    -- U minutos
    U7: bcd2ssd
        generic map (
            CC_ACn => 1
        )
        port map (
            BCD => bcd_unimm,
            ZOP => '0',
            DPin => '0',
            SSD => SSD_UNIMM,
            DPout => open
        );

    -- D minutos
    U8: bcd2ssd
        generic map (
            CC_ACn => 1
        )
        port map (
            BCD => bcd_dezmm,
            ZOP => '0',
            DPin => '0',
            SSD => SSD_DEZMM,
            DPout => open
        );

    -- U horas
    U9: bcd2ssd
        generic map (
            CC_ACn => 1
        )
        port map (
            BCD => bcd_unihh,
            ZOP => '0',
            DPin => '0',
            SSD => SSD_UNIHH,
            DPout => open
        );

    -- D horas
    U10: bcd2ssd
        generic map (
            CC_ACn => 1
        )
        port map (
            BCD => bcd_dezhh,
            ZOP => '0',
            DPin => '0',
            SSD => SSD_DEZHH,
            DPout => open
        );

end architecture;

	
	