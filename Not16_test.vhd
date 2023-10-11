library ieee;
use ieee.std_logic_1164.all;

entity test_not16 is
end test_not16;

architecture behavioral of test_not16 is
  component not16 is
    port (
      input: in std_logic_vector(15 downto 0);
      output: out std_logic_vector(15 downto 0)
    );
  end component;

  signal input: std_logic_vector(15 downto 0);
  signal output: std_logic_vector(15 downto 0);

begin
  uut: not16 port map (
    input => input,
    output => output
  );

  process begin
    input <= "0000000000000000";
    wait for 10 ns;
    input <= "0000000000000001";
    wait for 10 ns;
    input <= "0000000000000010";
    wait for 10 ns;
    input <= "0000000000000100";
    wait for 10 ns;
    input <= "0000000000001000";
    wait for 10 ns;
    input <= "0000000000010000";
    wait for 10 ns;
    input <= "0000000000100000";
    wait for 10 ns;
    input <= "0000000001000000";
    wait for 10 ns;
    input <= "0000000010000000";
    wait for 10 ns;
    input <= "0000000100000000";
    wait for 10 ns;
    input <= "0000001000000000";
    wait for 10 ns;
    input <= "0000010000000000";
    wait for 10 ns;
    input <= "0000100000000000";
    wait for 10 ns;
    input <= "0001000000000000";
    wait for 10 ns;
    input <= "0010000000000000";
    wait for 10 ns;
    input <= "0100000000000000";
    wait for 10 ns;
    input <= "1000000000000000";
    wait for 10 ns;
  end process;

  assert (output = not(input)) report "Error en not16" severity error;
end behavioral;
