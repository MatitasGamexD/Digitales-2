
library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4Way16 is
    Port (
        a, b, c, d : in std_logic_vector(15 downto 0);
        s1, s2 : in std_logic;
        y : out std_logic_vector(15 downto 0)
    );
end Mux4Way16;

architecture Behavioral of Mux4Way16 is
begin
    process (a, b, c, d, s1, s2)
    begin
        if s1 = '0' and s2 = '0' then
            y <= a;
        elsif s1 = '0' and s2 = '1' then
            y <= b;
        elsif s1 = '1' and s2 = '0' then
            y <= c;
        else
            y <= d;
        end if;
    end process;
end Behavioral;
