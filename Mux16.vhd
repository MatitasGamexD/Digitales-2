library ieee;
use ieee.std_logic_1164.all;

entity Mux16 is
    Port (
        a   : in std_logic_vector(15 downto 0);
        b   : in std_logic_vector(15 downto 0);
        sel : in std_logic;
        o   : out std_logic_vector(15 downto 0)
    );
end entity Mux16;

architecture arch of Mux16 is
    component Mux is
        Port (
            a   : in  std_logic;
            b   : in  std_logic;
            sel : in  std_logic;
            o   : out std_logic
        );
    end component;

begin
    -- Generación de instancias de Mux en un bucle for
    gen_mux: for i in 0 to 15 generate
        mux_i: Mux
            Port map (
                a   => a(i),
                b   => b(i),
                sel => sel,
                o   => o(i)
            );
    end generate gen_mux;

end architecture arch;
