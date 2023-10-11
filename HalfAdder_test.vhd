library ieee;
use ieee.std_logic_1164.all;

entity HalfAdderTest is
end entity HalfAdderTest;

architecture TB of HalfAdderTest is

  component HalfAdder is
    port (
      A : in std_logic;
      B : in std_logic;
      Sum : out std_logic;
      Carry : out std_logic
    );
  end component;

  signal A, B, Sum, Carry : std_logic;

begin

  uut : HalfAdder port map (
    A => A,
    B => B,
    Sum => Sum,
    Carry => Carry
  );

  process
  begin
    -- Test all possible input combinations
    A <= '0';
    B <= '0';
    wait for 10 ns;
    assert Sum = '0' and Carry = '0' report "Incorrect result for A = '0', B = '0'";

    A <= '0';
    B <= '1';
    wait for 10 ns;
    assert Sum = '1' and Carry = '0' report "Incorrect result for A = '0', B = '1'";

    A <= '1';
    B <= '0';
    wait for 10 ns;
    assert Sum = '1' and Carry = '0' report "Incorrect result for A = '1', B = '0'";

    A <= '1';
    B <= '1';
    wait for 10 ns;
    assert Sum = '0' and Carry = '1' report "Incorrect result for A = '1', B = '1'";

    wait;
  end process;

end architecture TB;
