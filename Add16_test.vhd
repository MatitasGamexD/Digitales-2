library IEEE;
use IEEE.std_logic_1164.all;

entity add16_tb is
end entity add16_tb;

architecture rtl of add16_tb is

  component add16 is
    port (
      a, b : in std_logic_vector(15 downto 0);
      sum : out std_logic_vector(15 downto 0);
      cout : out std_logic
    );
  end component add16;

  signal a, b, sum : std_logic_vector(15 downto 0);
  signal cout : std_logic;

  uut : add16 port map (
    a => a,
    b => b,
    sum => sum,
    cout => cout
  );

begin

  a <= "0000000000000000";
  b <= "0000000000000001";

  wait for 10 ns;

  assert (sum = "0000000000000001") report "Incorrect sum";

  a <= "1111111111111111";
  b <= "1111111111111111";

  wait for 10 ns;

  assert (sum = "1111111111111110") report "Incorrect sum";

end architecture rtl;
