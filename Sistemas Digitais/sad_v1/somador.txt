library IEEE;
use IEEE.Std_Logic_1164.all;
use ieee.numeric_std.all;

entity somador is
generic (n : natural := 14);
port (A:  in std_logic_vector((n-1) downto 0);
      B:  in std_logic_vector((n-1) downto 0);
      result:  out std_logic_vector((n-1) downto 0)
     );
end somador;

architecture arch of somador is
begin
    result <= std_logic_vector(signed(a)+signed(b));
end arch;
