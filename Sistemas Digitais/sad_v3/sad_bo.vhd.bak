-- Quartus II VHDL Template
-- Unsigned Adder/Subtractor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sad_bo is

 generic
 ( datA_WIDTH : natural := 8;
	datA_WIDTH32 : natural := 32;
	datA_WIDTH14 : natural := 14;
	datA_WIDTH_end : natural := 5 );

 port 
 ( a : in unsigned ((DATA_WIDTH32-1) downto 0);
  b : in unsigned ((DATA_WIDTH32-1) downto 0);
  clk : in std_logic;
  ler, zi, ci, zsoma, csoma, cpa, cpb, csad_reg : in std_logic;
  fim: out std_LOGIC_VECTOR (3 downto 0);
  menor: out std_logic;
  result : out std_LOGIC_VECTOR ((DATA_WIDTH14-1) downto 0));

end entity;

architecture rtl of sad_bo is
 signal a0_8, b0_8, res0_8, a1_8, b1_8, res1_8, a2_8, b2_8, res2_8, a3_8, b3_8, res3_8: STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0);
 signal a14, res14, soma14, zeros, res_mux14: std_logic_vector ((DATA_WIDTH14-1) downto 0);
 signal res81, res82: std_logic_vector (8 downto 0);
 signal res9: std_logic_vector (9 downto 0);
 signal zero5, res5, in_reg5, out_reg5, um5 : std_logic_vector ((DATA_WIDTH_END-1) downto 0);

Component Registrador IS
 GENERIC ( N : NATURAL := 8 ) ;
 PORT (R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
  Rin, Clk: IN STD_LOGIC ;
  Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END component ;

component subtrator is 
 generic
 (m: natural := 8);
 port 
 ( a : in STD_LOGIC_VECTOR((m-1) downto 0);
  b : in STD_LOGIC_VECTOR ((m-1) downto 0);
  result: out STD_LOGIC_VECTOR ((m-1) downto 0));
end component;

component somador is 
 generic
 (n: natural := 14);
 port 
 ( a : in STD_LOGIC_VECTOR((n-1) downto 0);
  b : in STD_LOGIC_VECTOR ((n-1) downto 0);
  result : out STD_LOGIC_VECTOR ((n-1) downto 0));
end component;

component mux is
    generic (N: NATURAL := 8);
    Port ( SEL : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (N-1 downto 0);
           B : in STD_LOGIC_VECTOR (N-1 downto 0);
           y : out STD_LOGIC_VECTOR (N-1 downto 0));
end component;


component somador4 is 
 generic
 (p: natural := 4);
 port 
 ( a : in STD_LOGIC_VECTOR((p-1) downto 0);
  b : in STD_LOGIC_VECTOR ((p-1) downto 0);
  result : out STD_LOGIC_VECTOR ((p) downto 0));
end component;

component somador8 is 
 generic
 (m: natural := 8);
 port 
 ( a : in STD_LOGIC_VECTOR((m-1) downto 0);
  b : in STD_LOGIC_VECTOR ((m-1) downto 0);
  result : out STD_LOGIC_VECTOR ((m) downto 0));
end component;

component somador9 is 
 generic
 (m: natural := 9);
 port 
 ( a : in STD_LOGIC_VECTOR((m-1) downto 0);
  b : in STD_LOGIC_VECTOR ((m-1) downto 0);
  result : out STD_LOGIC_VECTOR ((m) downto 0));
end component;

begin
 --parte de calculo da diferencas--
 zeros <= "00000000000000";
   pA0: Registrador generic map(N => DATA_WIDTH) port map(std_LOGIC_VECTOR(a((DATA_WIDTH-1) downto 0)),cpA, clk,a0_8((DATA_WIDTH-1) downto 0));
	pB0: Registrador generic map(N => DATA_WIDTH) port map(std_LOGIC_VECTOR(b((DATA_WIDTH-1) downto 0)),cpB, clk,b0_8((DATA_WIDTH-1) downto 0));
	pA1: Registrador generic map(N => DATA_WIDTH) port map(std_LOGIC_VECTOR(a(15 downto 8)),cpA, clk,A1_8((DATA_WIDTH-1) downto 0));
	pB1: Registrador generic map(N => DATA_WIDTH) port map(std_LOGIC_VECTOR(b(15 downto 8)),cpB, clk,b1_8((DATA_WIDTH-1) downto 0));
	pA2: Registrador generic map(N => DATA_WIDTH) port map(std_LOGIC_VECTOR(a(23 downto 16)),cpA, clk,A2_8((DATA_WIDTH-1) downto 0));
	pB2: Registrador generic map(N => DATA_WIDTH) port map(std_LOGIC_VECTOR(b(23 downto 16)),cpB, clk,b2_8((DATA_WIDTH-1) downto 0));
	pA3: Registrador generic map(N => DATA_WIDTH) port map(std_LOGIC_VECTOR(a(31 downto 24)),cpA, clk,A3_8((DATA_WIDTH-1) downto 0));
	pB3: Registrador generic map(N => DATA_WIDTH) port map(std_LOGIC_VECTOR(b(31 downto 24)),cpB, clk,b3_8((DATA_WIDTH-1) downto 0));
	
	sub0: subtrator port map(a0_8((DATA_WIDTH-1) downto 0),b0_8((DATA_WIDTH-1) downto 0),res0_8((DATA_WIDTH-1) downto 0));
	sub1: subtrator port map(a1_8((DATA_WIDTH-1) downto 0),b1_8((DATA_WIDTH-1) downto 0),res1_8((DATA_WIDTH-1) downto 0));
	sub2: subtrator port map(a2_8((DATA_WIDTH-1) downto 0),b2_8((DATA_WIDTH-1) downto 0),res2_8((DATA_WIDTH-1) downto 0));
	sub3: subtrator port map(a3_8((DATA_WIDTH-1) downto 0),b3_8((DATA_WIDTH-1) downto 0),res3_8((DATA_WIDTH-1) downto 0));
	
	soma8Bits1: somador8 generic map(m => datA_WIDTH) port map(res0_8((DATA_WIDTh-1) downto 0),res1_8((DATA_WIDTH-1) downto 0),res81(8 downto 0));
	soma8Bits2: somador8 generic map(m => datA_WIDTH) port map(res2_8((DATA_WIDTH-1) downto 0),res3_8((DATA_WIDTH-1) downto 0),res82(8 downto 0));
	
	soma9Bits: somador9 generic map(m => 9) port map(res81(8 downto 0),res82(8 downto 0),res9(9 downto 0));

	a14 <= "0000" & res9(9 downto 0);
	soma14Bits: somador port map(a14((DATA_WIDTH14-1) downto 0),soma14((DATA_WIDTH14-1) downto 0),res14((DATA_WIDTH14-1) downto 0));
	mux14Bits: mux generic map(N => DATA_WIDTH14) port map(zsoma,res14((DATA_WIDTH14-1) downto 0),zeros((DATA_WIDTH14-1) downto 0),res_mux14((DATA_WIDTH14-1) downto 0));
	soma: Registrador generic map(N => DATA_WIDTH14) port map(res_mux14((DATA_WIDTH14-1) downto 0),csoma, clk,soma14((DATA_WIDTH14-1) downto 0));
	SAD_reg: Registrador generic map(N => DATA_WIDTH14) port map(soma14((DATA_WIDTH14-1) downto 0),csad_reg,clk,result((DATA_WIDTH14-1) downto 0));
	
 --parte do calculo do end--
	zero5 <= "00000";
	um5 <= "00001";
	mux5bits: mux generic map(N => DATA_WIDTH_END) port map(zi, res5((DATA_WIDTH_END-1)downto 0), zero5((DATA_WIDTH_END-1)downto 0), in_reg5((DATA_WIDTH_END-1)downto 0));
	reg5: Registrador generic map(N => DATA_WIDTH_END) port map(in_reg5((DATA_WIDTH_END-1)downto 0), ci, clk, out_reg5((DATA_WIDTH_END-1)downto 0));
	menor <= not out_reg5(4);
	fim <= out_reg5(3 downto 0);
	soma5 : somador4 port map(out_reg5(3 downto 0),um5((DATA_WIDTH_END-2)downto 0), res5((DATA_WIDTH_END-1)downto 0));
end rtl;
