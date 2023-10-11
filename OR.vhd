library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
  port (
    A, B : in std_logic;
    Y : out std_logic
  );
end or_gate;

architecture behavioral of or_gate is
begin
  Y <= A or B;
end behavioral;
