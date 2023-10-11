library ieee;
use ieee.std_logic_1164.all;

entity mux is
  port (
    sel : in std_logic;
    d0, d1 : in std_logic;
    y : out std_logic
  );
end entity mux;

architecture behavioral of mux is
begin
  y <= d0 when sel = '0' else d1;
end architecture behavioral;
