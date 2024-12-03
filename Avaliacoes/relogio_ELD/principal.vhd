library ieee;
use ieee.std_logic_1164.all;

entity principal is
        generic
        (
            CC_ACn: natural := 1
        );
        
	port
	(
		-- Input ports
		entradas_BCD: in std_logic_vector(3 downto 0);
		entradas_DP: in std_logic_vector(3 downto 0);
--		entradas_ZOP: in std_logic_vector(3 downto 0);

		-- Output ports
		saida_SSD1 : out std_logic_vector(6 downto 0);
		saida_SSD2 : out std_logic_vector(6 downto 0);
		saida_SSD3 : out std_logic_vector(6 downto 0);
		saida_SSD4 : out std_logic_vector(6 downto 0);
		saida_DP1: out std_logic;
		saida_DP2: out std_logic;
		saida_DP3: out std_logic;
		saida_DP4: out std_logic
	);
end entity;


architecture four_displays of principal is
    component bcd2ssd
        generic
        (
            CC_ACn: natural := 1
        );
        
        port
        (
            -- Entradas do componente
            BCD  : in  std_logic_vector(3 downto 0);
            ZOP  : in  std_logic;
            DPin : in  std_logic;
            
            -- Saídas do componente
            SSD  : out std_logic_vector(6 downto 0);
            DPout: out std_logic
        );
    end component;
--	
begin
  -- Instâncias do componente bcd2ssd para os 4 displays
    display0: bcd2ssd
        generic map (
            CC_ACn => 1
        )
        port map (
            BCD   => entradas_BCD,
            ZOP   => '1',
            DPin  => entradas_DP(0),
            SSD   => saida_SSD1,
            DPout => open
        );
		  
    display1: bcd2ssd
        generic map (
            CC_ACn => 1
        )
        port map (
            BCD   => entradas_BCD,
            ZOP   => '0',
            DPin  => entradas_DP(1),
            SSD   => saida_SSD2,
            DPout => open
        );
    display2: bcd2ssd
        generic map (
            CC_ACn => 0
        )
        port map (
            BCD   => entradas_BCD,
            ZOP   => '1',
            DPin  => entradas_DP(2),
            SSD   => saida_SSD3,
            DPout => open
        );
    display3: bcd2ssd
        generic map (
            CC_ACn => 0
        )
        port map (
            BCD   => entradas_BCD,
            ZOP   => '0',
            DPin  => entradas_DP(3),
            SSD   => saida_SSD4,
            DPout => open
        );	  
end architecture;


