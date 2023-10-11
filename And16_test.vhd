
library	IEEE;
use IEEE.std_logic_1164.all;


entity And16_test is	
end entity;


architecture arch_test of And16_test is


	component And16
		port(
			a	:	in 	std_logic_vector(15 downto 0);
			b	:	in 	std_logic_vector(15 downto 0);
			y	:	out	std_logic_vector(15 downto 0)
		);
	end component;
	

	signal a_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal b_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal y_test	: std_logic_vector(15 downto 0);
	
	begin
	

	dut1	: And16 
		port map (
			a => a_test,
			b => b_test,
			y => y_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of AndGate"	  
		severity note;
		
		a_test <= "0000000000000000"; 
		b_test <= "0000000000000000";
		wait for 10 ns;
		assert y_test = "0000000000000000"
		  report "Failure for = [0000000000000000] and b = [0000000000000000]"
		  severity failure;
		  
		a_test <= "1111111111111111"; 
		b_test <= "0000000000000000";
		wait for 10 ns;
		assert y_test = "0000000000000000"
		  report "Failure for = [1111111111111111] and b = [0000000000000000]"
		  severity failure;
		  
		a_test <= "0000000000000000"; 
		b_test <= "1111111111111111";
		wait for 10 ns;
		assert y_test = "0000000000000000"
		  report "Failure for = [0000000000000000] and b = [1111111111111111]"
		  severity failure;
		  
		a_test <= "1111000000000000"; 
		b_test <= "0000010000001000";
		wait for 10 ns;
		assert y_test = "0000000000000000"
		  report "Failure for = [1111000000000000] and b = [0000010000001000]"
		  severity failure;
		  
		a_test <= "1111100000000000"; 
		b_test <= "1111000000000000";
		wait for 10 ns;
		assert y_test = "1111000000000000"
		  report "Failure for = [1111100000000000] and b = [1111000000000000]"
		  severity failure;
		  
		a_test <= "0000001111100000"; 
		b_test <= "0000111000000111";
		wait for 10 ns;
		assert y_test = "0000001000000000"
		  report "Failure para a = [0000001111100000] and b = [0000111000000111]"
		  severity failure;
		  
		a_test <= "0001111000000000"; 
		b_test <= "0000010001000111";
		wait for 1 0 ns;
		assert y_test = "0000010000000000"
		  report "Failure for= [0001111000000000] and b = [0000010001000111]"
		  severity failure;
		  
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;
