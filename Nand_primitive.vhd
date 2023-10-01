library ieee;
use ieee.std_logic_1164.all;

entity nand is
port (
  input1, input2: in std_logic;
  output: out std_logic
);
end nand;

architecture behavioral of nand is
begin
  output <= not(input1 and input2);
end behavioral;
