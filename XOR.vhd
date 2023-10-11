library ieee;
use ieee.std_logic_1164.all;

entity xor is
port(
  a, b: in std_logic;
  y: out std_logic
);
end xor;

architecture behavioral of xor is
begin
  y <= not(a and b) or (a and not(b)) or (not(a) and b);
end behavioral;
