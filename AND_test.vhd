library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity test_and is
    port (
        a, b: in STD_LOGIC;
        o: out STD_LOGIC
    );
end entity test_and;

architecture arch of test_and is
begin
    process
    begin
        a <= '0';
        b <= '0';
        wait for 10 ns;
        a <= '1';
        b <= '0';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        wait for 10 ns;
        a <= '1';
        b <= '1';
        wait for 10 ns;
    end process;

    o <= and(a, b);
end architecture arch;
