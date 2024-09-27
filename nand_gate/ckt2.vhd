-- Exemplo: Declaração de uma porta NAND em VHDL
-- Autor:     prof. Marcos Moecke
-- Data:      20/02/2024
-- Filename:  nand_gate.vhd

library std;
use std.standard.all;

entity ckt2 is
	port (a, b, c, d: in bit; y: out bit);
end entity;

architecture ifsc_v1 of ckt2 is
begin
	y <= not(a and b) or (c and not d and not b);
end architecture;
