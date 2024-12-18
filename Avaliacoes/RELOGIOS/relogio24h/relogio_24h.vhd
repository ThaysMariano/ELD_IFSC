library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

entity relogio_24h is
    Port ( clk      : in STD_LOGIC;     
           reset    : in STD_LOGIC;       
           hora     : out STD_LOGIC_VECTOR(5 downto 0);   
           minuto   : out STD_LOGIC_VECTOR(5 downto 0);   
           segundo  : out STD_LOGIC_VECTOR(5 downto 0)  
			);  
end relogio_24h;

architecture contador of relogio_24h is

    signal segundos   : integer range 0 to 59 := 0;
    signal minutos    : integer range 0 to 59 := 0;
    signal horas      : integer range 0 to 23 := 0;

begin

    process(clk, reset)
    begin
        if reset = '1' then
            segundos <= 0;
            minutos  <= 0;
            horas    <= 0;
        elsif rising_edge(clk) then
        
            if segundos = 59 then
                segundos <= 0;
        
                if minutos = 59 then
                    minutos <= 0;
              
                    if horas = 23 then
                        horas <= 0;
                    else
                        horas <= horas + 1;
                    end if;
                else
                    minutos <= minutos + 1;
                end if;
            else
                segundos <= segundos + 1;
            end if;
        end if;
    end process;

  --saidas
    hora <= std_logic_vector(to_unsigned(horas, 6));   
    minuto <= std_logic_vector(to_unsigned(minutos, 6)); 
    segundo <= std_logic_vector(to_unsigned(segundos, 6)); 

end contador;
