

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
