-- Quartus II VHDL Template
-- Unsigned Adder/Subtractor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sad_bo is

 generic
 ( DATA_WIDTH : natural := 8;
   DATA_WIDTH_AFTER : natural := 14;
   DATA_WIDTH_END : natural :=7 );

 port 
 ( a : in unsigned ((DATA_WIDTH-1) downto 0);
  b : in unsigned ((DATA_WIDTH-1) downto 0);
  clk : in std_logic;
  ler, zi,ci,zsoma, csoma,cpA, cpB, csad_reg : in std_logic;
  menor: out std_logic;
  fim: out std_LOGIC_VECTOR (5 downto 0);
  result : out std_LOGIC_VECTOR ((DATA_WIDTH_AFTER-1) downto 0));

end entity;

architecture rtl of sad_bo is
 signal a8, b8, res8: STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0);
 signal a14, res14, soma14, zeros, res_mux14: std_logic_vector ((DATA_WIDTH_AFTER-1) downto 0);
 signal zero7, res7, in_reg7, out_reg7, um7 : std_logic_vector ((DATA_WIDTH_END-1) downto 0);

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


component somador6 is 
 generic
 (p: natural := 6);
 port 
 ( a : in STD_LOGIC_VECTOR((p-1) downto 0);
  b : in STD_LOGIC_VECTOR ((p-1) downto 0);
  result : out STD_LOGIC_VECTOR ((p) downto 0));
end component;
begin
 --parte de calculo da diferencas--
 zeros <= "00000000000000";
   pA: Registrador generic map(N => DATA_WIDTH) port map(std_LOGIC_VECTOR(a((DATA_WIDTH-1) downto 0)),cpA, clk,a8((DATA_WIDTH-1) downto 0));
	pB: Registrador generic map(N => DATA_WIDTH) port map(std_LOGIC_VECTOR(b((DATA_WIDTH-1) downto 0)),cpB, clk,b8((DATA_WIDTH-1) downto 0));
	sub: subtrator port map(a8((DATA_WIDTH-1) downto 0),b8((DATA_WIDTH-1) downto 0),res8((DATA_WIDTH-1) downto 0));
	a14 <= "000000" & res8((DATA_WIDTH-1) downto 0); 
	soma14Bits: somador port map(a14((DATA_WIDTH_AFTER-1) downto 0),soma14((DATA_WIDTH_AFTER-1) downto 0),res14((DATA_WIDTH_AFTER-1) downto 0));
	mux14Bits: mux generic map(N => DATA_WIDTH_AFTER) port map(zsoma,res14((DATA_WIDTH_AFTER-1) downto 0),zeros((DATA_WIDTH_AFTER-1) downto 0),res_mux14((DATA_WIDTH_AFTER-1) downto 0));
	soma: Registrador generic map(N => DATA_WIDTH_AFTER) port map(res_mux14((DATA_WIDTH_AFTER-1) downto 0),csoma, clk,soma14((DATA_WIDTH_AFTER-1) downto 0));
	SAD_reg: Registrador generic map(N => DATA_WIDTH_AFTER) port map(soma14((DATA_WIDTH_AFTER-1) downto 0),csad_reg,clk,result((DATA_WIDTH_AFTER-1) downto 0));

 --parte do calculo do end--
	zero7 <= "0000000";
	um7 <= "0000001";
	mux7bits: mux generic map(N => DATA_WIDTH_END) port map(zi, res7((DATA_WIDTH_END-1)downto 0), zero7((DATA_WIDTH_END-1)downto 0), in_reg7((DATA_WIDTH_END-1)downto 0));
	reg7: Registrador generic map(N => DATA_WIDTH_END) port map(in_reg7((DATA_WIDTH_END-1)downto 0), ci, clk, out_reg7((DATA_WIDTH_END-1)downto 0));
	menor <= not out_reg7(6);
	fim <= out_reg7(5 downto 0);
	soma7 : somador6 port map(out_reg7(5 downto 0),um7((DATA_WIDTH_END-2)downto 0), res7((DATA_WIDTH_END-1)downto 0));
end rtl;
