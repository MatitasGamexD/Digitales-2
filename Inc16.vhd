entity Inc16 is
port (
  A : in std_logic_vector (15 downto 0);
  Out : out std_logic_vector (15 downto 0)
);
end entity Inc16;

architecture Inc16_Arch of Inc16 is
  signal Carry : std_logic;
begin
  -- Generate the sum and carry-out for each bit position.
  for i in 0 to 15 loop
    if i = 15 then
      Out(i) <= A(i) xor '1';
      Carry <= A(i);
    else
      Out(i) <= A(i) xor Carry;
      Carry <= A(i) and Carry;
    end if;
  end loop;
end architecture Inc16_Arch;
