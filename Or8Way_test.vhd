library IEEE;
use IEEE.std_logic_1164.all;

entity Or8Way_tb is
end Or8Way_tb;

architecture Behavioral of Or8Way_tb is

    signal in0, in1, in2, in3, in4, in5, in6, in7, out : std_logic;

begin

    -- Configuración de la señal de entrada
    in0 <= '0';
    in1 <= '0';
    in2 <= '0';
    in3 <= '0';
    in4 <= '0';
    in5 <= '0';
    in6 <= '0';
    in7 <= '0';


    process
    begin
        wait for 10 ns;
        in0 <= '1';
        wait for 10 ns;
        in1 <= '1';
        wait for 10 ns;
        in2 <= '1';
        wait for 10 ns;
        in3 <= '1';
        wait for 10 ns;
        in4 <= '1';
        wait for 10 ns;
        in5 <= '1';
        wait for 10 ns;
        in6 <= '1';
        wait for 10 ns;
        in7 <= '1';
        wait for 10 ns;
    end process;

    
    process
    begin
        wait for 10 ns;
        report "out = " & out;
        wait;
    end process;

end Behavioral;
