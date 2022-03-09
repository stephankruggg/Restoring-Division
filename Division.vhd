library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Division is
    generic(X : natural := 4);
	port (
		M, Q: in std_logic_vector(x - 1 downto 0);
		clk, reset: in std_logic;
		quotient, remainder: out std_logic_vector(x - 1 downto 0);
      acabou: out std_logic
	);
end Division;

architecture arch of Division is

	component bo
    port (
	    M, Q: in std_logic_vector(x - 1 downto 0);
		 clk, novoNum, carga, cargaM: in std_logic;
		 quotient, remainder: out std_logic_vector(x - 1 downto 0);
       nZero: out std_logic);
	end component;

   component controle
   port(
		 clk, nZero, reset: in std_logic;
		 novoNum, acabou, carga, cargaM: out std_logic);
   end component;
	 	
signal tnovoNum, tnZero, tcarga, tcargaM: std_logic;

begin

    bo1: bo port map (M, Q, clk, tnovoNum, tcarga, tcargaM, quotient, remainder, tnZero);
    bc1: controle port map (clk, tnZero, reset, tnovoNum, acabou, tcarga, tcargaM);

end arch;