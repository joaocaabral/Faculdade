library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Registrador IS
 GENERIC ( N : NATURAL := 8 ) ;
 PORT (R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
  Rin, Clk: IN STD_LOGIC ;
  Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
end registrador;

architecture arch of registrador is
begin
	process
	begin
		wait until clk'event and clk = '1';
		if rin = '1' then Q<=R;
		end if;
	end process;
end arch;