library IEEE;
use IEEE.Std_Logic_1164.all;
use ieee.numeric_std.all;

entity somador9 is
generic (m : natural := 9);
port (A:  in std_logic_vector((m-1) downto 0);
      B:  in std_logic_vector((m-1) downto 0);
      result:  out std_logic_vector((m) downto 0)
     );
end somador9;

architecture arch of somador9 is
signal temp: unsigned(m downto 0);
begin
    temp <= (('0'&unsigned(a)) + ('0'&unsigned(b)));
	 result <= std_logic_vector(temp);
end arch;
