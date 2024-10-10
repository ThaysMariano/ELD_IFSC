entity mux4x1 is
	port
	(
		-- Input ports
		X: in  bit_vector (3 downto 0);
                Sel : in bit_vector (1 downto 0);
		-- Output ports
		Y : out bit
	);
end entity;

-- Implementação com lógica pura
architecture v_logica_pura of mux4x1 is

begin
 Y <= (X(0) and (not Sel(1)) and (not Sel(0))) or
      ...
end architecture;