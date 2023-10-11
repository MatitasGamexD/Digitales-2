library ieee;
use ieee.std_logic_1164.all;

entity FullAdderTest is
end entity FullAdderTest;

architecture TB of FullAdderTest is

  component FullAdder is
    port (
      A : in std_logic;
      B : in std_logic;
      Cin : in std_logic;
      Sum : out std_logic;
      Cout : out std_logic
    );
  end component;

  signal A, B, Cin, Sum, Cout : std_logic;

begin

  uut : FullAdder port map (
    A => A,
    B => B,
    Cin => Cin,
    Sum => Sum,
    Cout => Cout
  );

process
  begin
    -- Test all possible input combinations
    A <= '0';
    B <= '0';
    Cin <= '0';
    wait for 10 ns;
    assert Sum = '0' and Cout = '0' report "Incorrect result for A = '0', B = '0', Cin = '0'";

    A <= '0';
    B <= '1';
    Cin <= '0';
    wait for 10 ns;
    assert Sum = '1' and Cout = '0' report "Incorrect result for A = '0', B = '1', Cin = '0'";

    A <= '1';
    B <= '0';
    Cin <= '0';
    wait for 10 ns;
    assert Sum = '1' and Cout = '0' report "Incorrect result for A = '1', B = '0', Cin = '0'";

    A <= '1';
    B <= '1';
    Cin <= '0';
    wait for 10 ns;
    assert Sum = '0' and Cout = '1' report "Incorrect result for A = '1', B = '1', Cin = '0'";

    A <= '0';
    B <= '0';
    Cin <= '1';
    wait for 10 ns;
    assert Sum = '1' and Cout = '0' report "Incorrect result for A = '0', B = '0', Cin = '1'";

    A <= '0';
    B <= '1';
    Cin <= '1';
    wait for 10 ns;
    assert Sum = '0' and Cout = '1' report "Incorrect result for A = '0', B = '1', Cin = '1'";

    A <= '1';
    B <= '0';
    Cin <= '1';
    wait for 10 ns;
    assert Sum = '0' and Cout = '1' report "Incorrect result for A = '1', B = '0', Cin = '1'";

    A <= '1';
    B <= '1';
    Cin <= '1';
    wait for 10 ns;
    assert Sum = '1' and Cout = '1' report "Incorrect result for A = '1', B = '1', Cin = '1'";

    wait;
  end process;

end architecture TB;
