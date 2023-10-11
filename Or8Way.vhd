library IEEE;
use IEEE.std_logic_1164.all;

entity Or8Way is
    port (
        in0 : in std_logic;
        in1 : in std_logic;
        in2 : in std_logic;
        in3 : in std_logic;
        in4 : in std_logic;
        in5 : in std_logic;
        in6 : in std_logic;
        in7 : in std_logic;
        out : out std_logic
    );
end Or8Way;

architecture Behavioral of Or8Way is

begin

    out <= in0 or in1 or in2 or in3 or in4 or in5 or in6 or in7;

end Behavioral;

