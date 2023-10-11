library ieee;
use ieee.std_logic_1164.all;

entity not16 is
  port (
    input: in std_logic_vector(15 downto 0);
    output: out std_logic_vector(15 downto 0)
  );
end not16;

architecture behavioral of not16 is
begin
  output <= not(input);
end behavioral;
