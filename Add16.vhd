library IEEE;
use IEEE.std_logic_1164.all;

entity add16 is
  port (
    a, b : in std_logic_vector(15 downto 0);
    sum : out std_logic_vector(15 downto 0);
    cout : out std_logic
  );
end entity add16;

architecture rtl of add16 is

  signal carry : std_logic;

begin

  carry <= '0';

  for i in 0 to 15 loop
    sum(i) <= a(i) xor b(i) xor carry;
    carry <= (a(i) and b(i)) or (carry and (a(i) xor b(i)));
  end loop;

  cout <= carry;

end architecture rtl;
