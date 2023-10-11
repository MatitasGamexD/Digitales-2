library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity and is
    port (
        a, b: in STD_LOGIC;
        o: out STD_LOGIC
    );
end entity and;

architecture arch of and is
begin
    o <= a and b;
end architecture arch;
