library work;
use work.moecke.all;

entity somador_deas_gen_process is
    generic    (    N    : natural  :=    4 );
    port (
        a    : in  integer_vector(0 to N-1);
        result    : out integer range 0 to 31    );
end entity;

architecture ifsc_v1 of somador_deas_gen_process is
begin
	-- process - sequencial
	process (a)
		 variable tmp : integer range 0 to 31;
	begin 
	    tmp := 0;
			 for i in a'range loop
			 tmp := tmp + a(i);
			 end loop;
		 result <= tmp;
	end process;
end architecture;
		 
		 
		 
	