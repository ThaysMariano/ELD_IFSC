-- Encontro 02 --

-- Exemplo: Declaração de uma porta NAND em VHDL
-- Autor:     prof. Marcos Moecke
-- Data:      20/02/2024
-- Filename:  ckt2.vhd

library std;
use std.standard.all;

entity ckt2 is
	port ( A, B, C, D : in bit;
			Y 				: out bit
	);
end entity;

architecture ifsc_v1 of ckt2 is
begin
	Y <= not(A and B) or (C and not( D and B));
end architecture;