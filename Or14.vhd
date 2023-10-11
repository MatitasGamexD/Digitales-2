
entity Or16 is

  port (
    a : in std_logic_vector(15 downto 0);
    b : in std_logic_vector(15 downto 0);
    y : out std_logic_vector(15 downto 0)
  );
end Or16;

architecture Behavioral of Or16 is
  -- Define the internal signals
  signal c : std_logic_vector(15 downto 0);

  begin
    for i in 0 to 15 loop
      c(i) <= a(i) or b(i);
    end loop;
    y <= c;
  end Behavioral;
