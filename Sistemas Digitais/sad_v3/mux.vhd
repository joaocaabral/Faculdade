library ieee;
use ieee.std_logic_1164.all;

entity mux is
	generic (n : natural := 8);
	port (
		sel : in std_logic;
		a, b : in std_logic_vector((n - 1) downto 0);
		y : out std_logic_vector((n - 1) downto 0)
	);
end mux;

architecture arch of mux is
	begin 
	y <= a when sel = '0' else
		  b;
end arch;
