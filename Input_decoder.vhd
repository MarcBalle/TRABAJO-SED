
---- DECODIFICADOR DE BOTON DE ENTRADA ---- 

use library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;	
use std.textio.all;
use ieee.std_logic_textio.all;


Entity input_decoder is 
    
    Generic (N: natural := 4); -- Numero de pisos, por cada piso un boton 
	Port (
		boton_placa: IN std_logic_vector(N-1 downto 0);
		boton_bin: OUT std_logic_vector(2 downto 0)
		);
End entity;


Architecture dataflow of input_decoder is 

Begin 
	input:
	Block (ena = '1')
	Begin
	With boton_placa select 

					boton_bin <= "001" when "0001",
								 "010" when "0010", 
								 "011" when "0100",
								 "100" when "1000", 
								 "000" when others;

	End Block;
End architecture; 
								 
