library ieee;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

ENTITY sad_tb IS
END sad_tb;

ARCHITECTURE behavior OF sad_tb IS
    constant datA_WIDTH: integer := 8;
    constant datA_WIDTH32 : integer := 32;
	 constant data_Width14 : integer := 14;
   --Input
   signal a : std_logic_vector((DATA_WIDTH32-1) downto 0);
   signal b : std_logic_vector((DATA_WIDTH32-1) downto 0);
   signal clk : std_logic := '0';
   signal iniciar : std_logic := '0';
   signal rst : std_logic := '0';
--Output
   signal pronto : std_logic;
   signal fim : std_logic_vector(5 downto 0);
   signal result : std_logic_vector((DATA_WIDTH14-1) downto 0);

--CLock
   constant clk_period : time := 10 ns;

BEGIN
--DUT
   dut: entity work.sad
    PORT MAP (
          a => a,
          b => b,
          clk => clk,
          iniciar => iniciar,
          rst => rst,
          pronto => pronto,
          fim => fim,
          result => result
        );

   clk_process :process
   begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
   end process;
   stim_proc: process
   begin       
      wait for 100 ns; 
      rst <= '0';

      -- insert stimulus here
           
      wait;
   end process;

END;
