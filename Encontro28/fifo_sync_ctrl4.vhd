-- 19 dezembro

--=============================
-- Listing 9.16 fifo controller
--=============================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo_sync_ctrl4 is
	generic (W: natural := 3);
   port(
      clk, reset: in std_logic;
      wr, rd: in std_logic;
      full, empty: out std_logic;
      w_addr, r_addr: out std_logic_vector(W-1 downto 0)
   );
end fifo_sync_ctrl4;

architecture enlarged_bin_arch of fifo_sync_ctrl4 is
--   constant W: natural:=4;
   signal w_ptr_reg, w_ptr_next: unsigned(W downto 0);
   signal r_ptr_reg, r_ptr_next: unsigned(W downto 0);
   signal full_flag, empty_flag: std_logic;
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         w_ptr_reg <= (others=>'0');
         r_ptr_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
         w_ptr_reg <= w_ptr_next;
         r_ptr_reg <= r_ptr_next;
      end if;
   end process;
	
   -- write pointer next-state logic
   w_ptr_next <=
      w_ptr_reg + 1 when wr='1' and full_flag='0' else
      w_ptr_reg;
   full_flag <= '1' when r_ptr_reg(W) /= w_ptr_reg(W) and
             r_ptr_reg(W-1 downto 0) = w_ptr_reg(W-1 downto 0) else  
				  	 '0';
		 
   -- write port output
   w_addr <= std_logic_vector(w_ptr_reg(W-1 downto 0));
   full <= full_flag;
	
   -- read pointer next-state logic
   r_ptr_next <=
      r_ptr_reg + 1 when rd='1' and empty_flag='0' else
      r_ptr_reg;
   empty_flag <= '1' when r_ptr_reg=w_ptr_reg else
                 '0';
   -- read port output
   r_addr <= std_logic_vector(r_ptr_reg(W-1 downto 0));
   empty <= empty_flag;
	
end enlarged_bin_arch;
