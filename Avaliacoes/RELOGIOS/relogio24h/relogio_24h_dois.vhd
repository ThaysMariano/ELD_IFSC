library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity relogio_24h_dois is
    Port ( clk       : in  STD_LOGIC;
           reset     : in  STD_LOGIC;
           hora      : out STD_LOGIC_VECTOR (5 downto 0);
           minuto    : out STD_LOGIC_VECTOR (5 downto 0);
           segundo   : out STD_LOGIC_VECTOR (5 downto 0)
         );
end entity;

architecture contador of relogio_24h_dois is

    signal segundos_reg   : integer range 0 to 59;
    signal minutos_reg    : integer range 0 to 59;
    signal horas_reg      : integer range 0 to 23;

    signal segundos_next  : integer range 0 to 59;
    signal minutos_next   : integer range 0 to 59;
    signal horas_next     : integer range 0 to 23;

begin

	-- register
    process(clk, reset)
    begin
        if (reset = '1') then
            segundos_reg <= 0;
            minutos_reg  <= 0;
            horas_reg    <= 0;
        elsif (clk'event and clk='1') then
            segundos_reg <= segundos_next;
            minutos_reg  <= minutos_next;
            horas_reg    <= horas_next;
        end if;
    end process;


	 -- next-state logic
    process(segundos_reg, minutos_reg, horas_reg)
    begin

        if segundos_reg = 59 then
            segundos_next <= 0;
            
            if minutos_reg = 59 then
                minutos_next <= 0;
                
                if horas_reg = 23 then
                    horas_next <= 0;
                else
                    horas_next <= horas_reg + 1;
                end if;
            else
                minutos_next <= minutos_reg + 1;
            end if;
        else
            segundos_next <= segundos_reg + 1;
        end if;
    end process;

	 -- output logic
    hora   <= std_logic_vector(to_unsigned(horas_reg, 6));
    minuto <= std_logic_vector(to_unsigned(minutos_reg, 6));
    segundo <= std_logic_vector(to_unsigned(segundos_reg, 6));

end architecture;
