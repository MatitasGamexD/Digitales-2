library ieee;
use ieee.std_logic_1164.all;

entity And16 is
  port (
    i1, i2, ..., i16: in std_logic;
    o: out std_logic
  );
end And16;

architecture behavioral of And16 is

  signal t1, t2, ..., t8: std_logic;

begin


  t1 <= i1 and i2;
  t2 <= i3 and i4;
  o <= t1 and t2;

end behavioral;
