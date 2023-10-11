library ieee;
use ieee.std_logic_1164.all;

entity tb_mux is
  end entity tb_mux;

architecture behavior of tb_mux is

  component mux is
    port (
      sel : in std_logic;
      d0, d1 : in std_logic;
      y : out std_logic
    );
  end component mux;

  signal sel, d0, d1, y : std_logic;

begin


  mux0 : mux port map (
    sel => sel,
    d0 => d0,
    d1 => d1,
    y => y
  );


  sel <= '0';
  d0 <= '1';
  d1 <= '0';


  wait for 10 ns;

 
  assert y = '1' report "Output should be 1" severity failure;


  sel <= '1';
  d0 <= '0';
  d1 <= '1';

 
  wait for 10 ns;


  assert y = '1' report "Output should be 1" severity failure;

end architecture behavior;
