library ieee;
use ieee.std_logic_1164.all;

entity testbench_mux8Way16 is
  port (
    clk : in std_logic;
    reset : in std_logic;
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
end testbench_mux8Way16;

architecture behavioral of testbench_mux8Way16 is


  component mux8Way16 is
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

 signal clk_vec : std_logic_vector(10 downto 0);
  signal reset_vec : std_logic_vector(10 downto 0);
  signal in0_vec : std_logic_vector(10 downto 0);
  signal in1_vec : std_logic_vector(10 downto 0);
  signal in2_vec : std_logic_vector(10 downto 0);
  signal in3_vec : std_logic_vector(10 downto 0);
  signal in4_vec : std_logic_vector(10 downto 0);
  signal in5_vec : std_logic_vector(10 downto 0);
  signal in6_vec : std_logic_vector(10 downto 0);
  signal in7_vec : std_logic_vector(10 downto 0);
  signal sel_vec : std_logic_vector(2 downto 0);
  signal out_vec : std_logic_vector(10 downto 0);

  -- Inicializamos las variables
  clk_vec <= (others => '0');
  reset_vec <= (others => '1');
  in0_vec <= (others => '0');
  in1_vec <= (others => '0');
  in2_vec <= (others => '0');
  in3_vec <= (others => '0');
  in4_vec <= (others => '0');
  in5_vec <= (others => '0');
  in6_vec <= (others => '0');
  in7_vec <= (others => '0');
  sel_vec <= (others => '0');
  out_vec <= (others => '0');


  for i in 0 to 100 loop

 
    clk_vec <= clk_vec + 1;


    if (reset_vec(0) = '1') then
      out_vec <= (others => '0');
    else

      case sel_vec is
        when "000" => out_vec <= in0_vec;
        when "001" => out_vec <= in1_vec;
        when "010" => out_vec <= in2_vec;
        when "011" => out_vec <= in3_vec;
        when "100" => out_vec <= in4_vec;
        when "101" => out_vec <= in5_vec;
        when "110" => out_vec <= in6_vec;
        when "111" => out_vec <= in7_vec;
        when others => out_vec <= (others => '0');
      end case;
    end if;

  
    wait until clk_vec(0) = '1';

  end loop;

end behavioral;
