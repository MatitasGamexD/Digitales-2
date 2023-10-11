library ieee;
use ieee.std_logic_1164.all;

entity HalfAdder is
  port (
    A : in std_logic;
    B : in std_logic;
    Sum : out std_logic;
    Carry : out std_logic
  );
end entity HalfAdder;

architecture RTL of HalfAdder is
begin
  Sum <= A xor B;
  Carry <= A and B;
end architecture RTL;
