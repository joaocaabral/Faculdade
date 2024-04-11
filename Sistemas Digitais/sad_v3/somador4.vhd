library IEEE;
use IEEE.Std_Logic_1164.all;
use ieee.numeric_std.all;

entity somador4 is
generic (p : natural := 4);
port (A:  in std_logic_vector((p-1) downto 0);
      B:  in std_logic_vector((p-1) downto 0);
      result:  out std_logic_vector((p) downto 0)
     );
end somador4;

architecture arch of somador4 is
signal temp: unsigned(p downto 0);
begin
    temp <= (('0'&unsigned(a)) + ('0'&unsigned(b)));
	 result <= std_logic_vector(temp);
end arch;
