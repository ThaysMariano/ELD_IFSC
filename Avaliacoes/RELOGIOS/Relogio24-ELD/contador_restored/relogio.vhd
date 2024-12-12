-- unindo as partes

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity relogio is
   generic(
      CC_ACn : natural := 0
   );
        
	port
	(
		-- Input ports
		clk50MHz : in std_logic;
		rst : in std_logic;
	   zopIn: in std_logic;
		stopIn : in std_logic;

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
			SSD	: out std_logic_vector(6 downto 0)
--			DPout		: out std_logic
		);
	end component;

	component divisorClock is
		generic(
			MAX : natural := 22
		);
		port(
			clk, reset, stop: in std_logic;
			clk_out: out std_logic
		);
	end component;

	component contador is
		generic(
			-- Limites
			D : natural := 5; 
			U : natural := 9  
		);
		port(
			clk, reset: in std_logic;
			uni: out std_logic_vector(3 downto 0);
			dez :out std_logic_vector(3 downto 0);
			clk_out : out std_logic
		);
	end component;
	
	--declarando fios internos
	
	signal clk_1sec, clk_1min, clk_1hr : std_logic;
	signal bcd_unihh, bcd_dezhh, bcd_unimm, bcd_dezmm, bcd_uniss, bcd_dezss : std_logic_vector(3 downto 0);
	
	begin
	

	--clock
    U1: divisorClock
        generic map (

            MAX=> 10           
        )
        port map (
            clk => clk50MHz,
            reset => rst,
            clk_out => clk_1sec,
				stop => stopIn				--STOP
        );

    --BCD segundos
    U2: contador
        generic map (
            D => 5, 
            U => 9  
        )
        port map (
            clk => clk_1sec,
            reset => rst,
            uni=> bcd_uniss,
            dez=> bcd_dezss,
				clk_out => clk_1min
        );

    -- BCD minutos
    U3: contador
        generic map (
            D => 5, 
            U => 9  
        )
        port map (
            clk => clk_1min,
            reset => rst,
            uni=> bcd_unimm,
            dez => bcd_dezmm,
				clk_out => clk_1hr
        );

    -- BCD horas
    U4: contador
        generic map (
            D => 2, 
            U => 3  
        )
        port map (
            clk => clk_1hr,
            reset => rst,
            uni=> bcd_unihh,
            dez => bcd_dezhh,
				clk_out => open
        );

    -- Display de 7 segmentos
    -- U segundos
    U5: bcd2ssd
        generic map (
            CC_ACn => 0
        )
        port map (
            BCD => bcd_uniss,
            ZOP => '0',
            DPin => '0',
            SSD => SSD_UNISS
--           DPout => open
        );

    -- D segundos
    U6: bcd2ssd
        generic map (
            CC_ACn => 0
        )
        port map (
            BCD => bcd_dezss,
            ZOP => zopIn,
            DPin => '0',
            SSD => SSD_DEZSS
--           DPout => open
        );

    -- U minutos
    U7: bcd2ssd
        generic map (
            CC_ACn => 0
        )
        port map (
            BCD => bcd_unimm,
            ZOP => '0',
            DPin => '0',
            SSD => SSD_UNIMM
 --          DPout => open
        );

    -- D minutos
    U8: bcd2ssd
        generic map (
            CC_ACn => 0
        )
        port map (
            BCD => bcd_dezmm,
            ZOP => zopIn,
            DPin => '0',
            SSD => SSD_DEZMM
  --         DPout => open
        );

    -- U horas
    U9: bcd2ssd
        generic map (
            CC_ACn => 0
        )
        port map (
            BCD => bcd_unihh,
            ZOP => '0',
            DPin => '0',
            SSD => SSD_UNIHH
 --          DPout => open
        );

    -- D horas
    U10: bcd2ssd
        generic map (
            CC_ACn => 0
        )
        port map (
            BCD => bcd_dezhh,
            ZOP => zopIn,
            DPin => '0',
            SSD => SSD_DEZHH
--            DPout => open
        );
		  
		  

end architecture;