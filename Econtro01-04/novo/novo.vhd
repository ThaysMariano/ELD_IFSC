-- Exemplo: Declaração de uma porta NAND em VHDL
-- Autor:     prof. Marcos Moecke
-- Data:      20/02/2024
-- Filename:  nand_gate.vhd

library std;
use std.standard.all;

entity novo is
	port (a, b: in bit; x: out bit);
end entity;

architecture ifsc_v1 of novo is
begin
	x <= a nand b;
end architecture;