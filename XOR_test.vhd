library ieee;
use ieee.std_logic_1164.all;

entity testbench_xor is
end testbench_xor;

architecture behavioral of testbench_xor is

  component xor is
    port(
      a, b: in std_logic;
      y: out std_logic
    );
  end component;

  signal a, b, y: std_logic;

begin

  -- Instantiate the XOR gate
  xor_instance: xor port map(
    a => a,
    b => b,
    y => y
  );

  -- Initialize the inputs
  a <= '0';
  b <= '0';

  -- Simulate the circuit
  for i in 0 to 15 loop
    a <= std_logic'val(i);
    b <= std_logic'val(i);
    wait for 10 ns;
  end loop;

end behavioral;
