-- FlipFlop com Enable

library library_name;
use ieee.std_logic_1164.all;


entity flipFlopEnable is
   port(
      clk, preset: in std_logic;
      q: out std_logic_vector(6 downto 0);
		d: in std_logic_vector(6 downto 0)
   );
end flipFlopEnable;

architecture ifsc of flipFlopEnable is

begin

--Flip Flop tipo D com preset assincrono e sinal de enable, sensivel a borda de descida.
process (clock, preset)
begin
   if (preset = '1') then
      q <= '1';
   elsif (falling_edge(clock)) then
      if (enable = '1') then
         q <= d;
      end if;
   end if;
end process;


end architecture;
