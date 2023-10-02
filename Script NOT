library ieee;
use ieee.std_logic_1164.all;

entity not_gate_test is
end not_gate_test;

architecture test of not_gate_test is
  component not_gate is
    port (
      input: in std_logic;
      output: out std_logic
    );
  end component;

  signal input: std_logic;
  signal output: std_logic;

begin
  not_gate_instance: not_gate port map (
    input => input,
    output => output
  );

  -- Test cases
  input <= '0';
  assert output = '1' report "Input is 0, output should be 1" severity error;

  input <= '1';
  assert output = '0' report "Input is 1, output should be 0" severity error;

end test;
