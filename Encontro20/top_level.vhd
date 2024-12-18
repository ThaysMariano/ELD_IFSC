entity top_level is
	port (
		bcd_tl       : in std_logic_vector(3 downto 0);
		ACn_CC       : in std_logic; -- '1' para anodo comum, '0' para catodo comum
		Z_OPC        : in std_logic; -- '1' para mostrar zero, '0' para ocultar
		ssd1         : out std_logic_vector(6 downto 0);
		ssd2         : out std_logic_vector(6 downto 0);
		ssd3         : out std_logic_vector(6 downto 0);
		ssd4         : out std_logic_vector(6 downto 0)
	);
end entity;

architecture ifsc of top_level is
	component bcd2ssd is
		port (
			bcd          : in std_logic_vector(3 downto 0);
			ACn_CC       : in std_logic;
			Z_OPC        : in std_logic;
			ssd          : out std_logic_vector(6 downto 0)
	  	);
	end component;
	
begin
	u1 : bcd2ssd
	port map(bcd_tl => bcd, ACn_CC => '1', Z_OPC => '1', ssd => ssd1);
	u2 : bcd2ssd
	port map(bcd_tl => bcd, ACn_CC => '1', Z_OPC => '0', ssd => ssd2);
	u3 : bcd2ssd
	port map(bcd_tl => bcd, ACn_CC => '0', Z_OPC => '1', ssd => ssd3);
	u4 : bcd2ssd
	port map(bcd_tl => bcd, ACn_CC => '0', Z_OPC => '0', ssd => ssd4);
	
	
	
	
	
	
end architecture;
