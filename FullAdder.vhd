library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
  port (
    A : in std_logic;
    B : in std_logic;
    Cin : in std_logic;
    Sum : out std_logic;
    Cout : out std_logic
  );
end entity FullAdder;

architecture RTL of FullAdder is

  component HalfAdder is
    port (
      A : in std_logic;
      B : in std_logic;
      Sum : out std_logic;
      Carry : out std_logic
    );
  end component;

  signal Hsum, Hcarry : std_logic;

begin

  u1 : HalfAdder port map (
    A => A,
    B => B,
    Sum => Hsum,
    Carry => Hcarry
  );

  u2 : HalfAdder port map (
    A => Hsum,
    B => Cin,
    Sum => Sum,
    Carry => Cout
  );

end architecture RTL;
