library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_shiftLeft is
end tb_shiftLeft;

architecture tb of tb_shiftLeft is
    signal AP, QP: std_logic_vector(3 downto 0);
	 signal Ashift, Qshift: std_logic_vector(3 downto 0);
	 
begin
    UUT : entity work.shiftLeft port map 
	            (AP => AP, QP => QP, Ashift => Ashift, Qshift => Qshift);
    AP <= "0111";
    QP <= "0101";
end tb;