library ieee;
use ieee.std_logic_1164.all;

entity Inc16_Test is
end entity Inc16_Test;

architecture Inc16_Test_Arch of Inc16_Test is

  signal A : std_logic_vector (15 downto 0);
  signal Out : std_logic_vector (15 downto 0);

begin

  -- Instantiate the 16-bit incrementer.
  Inc16_Inst : entity Inc16 port map (
    A => A,
    Out => Out
  );

  -- Test the incrementer with all possible input values.
  for i in 0 to 65535 loop
    A <= std_logic_vector(to_unsigned(i, 16));

    -- Wait for the incrementer to finish.
    wait for 10 ns;

    -- Check the output of the incrementer.
    assert (Out = (A + 1)) report "Incrementer failed on input value " & to_string(i);
  end loop;

end architecture Inc16_Test_Arch;
