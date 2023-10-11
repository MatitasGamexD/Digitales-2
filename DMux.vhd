library ieee;
use ieee.std_logic_1164.all;

entity dmux is
port (
  a: in std_logic;
  sel: in std_logic;
  out0: out std_logic;
  out1: out std_logic
);
end dmux;

architecture behavioral of dmux is
begin
  out0 <= a when sel = '0' else '0';
  out1 <= a when sel = '1' else '0';
end behavioral;
