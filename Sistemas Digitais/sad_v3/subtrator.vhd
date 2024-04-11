library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtrator is
	generic (m : natural := 8);
	port ( 
		a : in STD_LOGIC_VECTOR((m-1) downto 0);
		b : in STD_LOGIC_VECTOR ((m-1) downto 0);
		result: out STD_LOGIC_VECTOR ((m-1) downto 0)
	);
end subtrator;

architecture arch of subtrator is
begin			
	result <= std_logic_vector(abs(signed(a)-signed(b))) when(a >= b) else std_logic_vector(abs(signed(b)-signed(a)));
end arch;
