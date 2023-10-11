library ieee;
use ieee.std_logic_1164.all;

entity mux8Way16 is
  port (
    in0 : in std_logic_vector(15 downto 0);
    in1 : in std_logic_vector(15 downto 0);
    in2 : in std_logic_vector(15 downto 0);
    in3 : in std_logic_vector(15 downto 0);
    in4 : in std_logic_vector(15 downto 0);
    in5 : in std_logic_vector(15 downto 0);
    in6 : in std_logic_vector(15 downto 0);
    in7 : in std_logic_vector(15 downto 0);
    sel : in std_logic_vector(2 downto 0);
    out : out std_logic_vector(15 downto 0)
  );
end mux8Way16;

architecture behavioral of mux8Way16 is

begin

  -- Declaramos las variables internas
  signal temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7 : std_logic_vector(15 downto 0);

  -- Realizamos la selección
  temp0 <= in0 and sel(2);
  temp1 <= in1 and sel(2)';
  temp2 <= in2 and sel(1);
  temp3 <= in3 and sel(1)';
  temp4 <= in4 and sel(0);
  temp5 <= in5 and sel(0)';
  temp6 <= in6 and sel(0);
  temp7 <= in7 and sel(0)';

  -- Seleccionamos la entrada correcta
  out <= temp0 or temp1 or temp2 or temp3 or temp4 or temp5 or temp6 or temp7;

end behavioral;
