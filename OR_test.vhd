library ieee;
use ieee.std_logic_1164.all;

entity test_or is
end test_or;

architecture behavioral of test_or is
  component or is
    port (
      A, B : in std_logic;
      Y : out std_logic
    );
  end component;

  signal A, B, Y : std_logic;

begin
  or_inst : or port map (
    A => A,
    B => B,
    Y => Y
  );

  process
  begin
    A <= '0';
    B <= '0';
    wait for 10 ns;

    A <= '0';
    B <= '1';
    wait for 10 ns;

    A <= '1';
    B <= '0';
    wait for 10 ns;

    A <= '1';
    B <= '1';
    wait for 10 ns;

    assert Y = '0' report "Y must be 0 when A and B are 0" severity error;
    assert Y = '1' report "Y must be 1 when A is 0 and B is 1" severity error;
    assert Y = '1' report "Y must be 1 when A is 1 and B is 0" severity error;
    assert Y = '1' report "Y must be 1 when A and B are 1" severity error;
  end process;
end behavioral;
