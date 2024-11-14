library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
entity contador is
	port(
		clk, reset: in std_logic;
		numero     : out std_logic_vector(7 downto 0)
	);
end contador;

architecture ifsc_v1 of contador is
	signal r_regUN: unsigned(3 downto 0); 
	signal r_regDZ: unsigned(3 downto 0); 
	signal r_nextUN: unsigned(3 downto 0);
	signal r_nextDZ: unsigned(3 downto 0);
 begin
 
 -- register
 process(clk,reset)
	begin
	if (reset='1') then
		r_regUN <= (others => '0');
		r_regDZ <= (others => '0');	
	elsif (clk'event and clk='1') then
		r_regUN <= r_nextUN;
		r_regDZ <= r_nextDZ;
	end if;
end process;

 -- next-state logic
			process(r_regUN, r_regDZ)
    begin
        if r_regUN = 9 then
            r_nextUN <= (others => '0'); 
            r_nextDZ <= r_regDZ + 1;     
        elsif r_regDZ = 9 then 
				r_nextDZ <= (others => '0'); 
			else
            r_nextUN <= r_regUN + 1; 
            r_nextDZ <= r_regDZ;      
        end if;
    end process;
 
 -- output logic
   numero <= std_logic_vector(r_regDZ) & std_logic_vector(r_regUN);

end ifsc_v1;



--unidade <= 0;
--	 dezena <= 0;
--	 
--	 auxu <= 0;
--	 auxd <=0;
--	 
--	 unidade <= auxu +1;
--			if unidade = 9 then
--				dezena <= auxd +1;
--				unidade <= 0;
--			end if;
--
--	 numero <= dezena & unidade;