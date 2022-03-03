library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_division is
end tb_division;

architecture tb of tb_division is
    signal M, Q: std_logic_vector(3 downto 0);
    signal quotient, remainder: std_logic_vector (3 downto 0);
    signal clk, reset, acabou: std_logic;
    constant clk_period: time := 20ns;
begin
    UUT : entity work.Division port map 
	            (M, Q, clk, reset, quotient, remainder, acabou);
    reset <= '1', '0' after clk_period / 2; 
    M <= "0011";
    Q <= "0101";
    
	 clk_gen : process
        begin
                clk <= '1';
            wait for clk_period/2; -- 50% do periodo pra cada nivel
                clk <= '0';
                wait for clk_period/2;
        end process;
end tb;