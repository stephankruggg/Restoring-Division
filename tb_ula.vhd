library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_ula is
end tb_ula;

architecture tb of tb_ula is
    signal Asub, Qshift, Ashift: std_logic_vector(3 downto 0);
    signal ulaop: std_logic;
	 signal AF, QF: std_logic_vector(3 downto 0);
begin
    UUT : entity work.ula port map 
	            (Asub, Qshift, Ashift, ulaop, AF, QF);
    
	 Asub <= "1001";
    Qshift <= "1010";
	 Ashift <= "1000";
    
	 ulaop <= '0', '1' after 20 ns, '0' after 40 ns;
end tb;