-- Encontro 8 --

library ieee;
use ieee.std_logic_1164.all;


entity flip_flop is 
port(
	reset, clock, d : in std_logic;
	q					 : out std_logic
);
end entity;

architecture processo of flip_flop is
begin

--Flip Flop tipo D com reset assincrono, sensivel a borda de subida.
process (clock,reset)
begin
   if (reset = '1') then
      q <= '0';
-- elsif (clock'event and clock = '1') then or
   elsif (rising_edge(clock)) then
      q <= d;
   end if;
	

end process;
end architecture;

