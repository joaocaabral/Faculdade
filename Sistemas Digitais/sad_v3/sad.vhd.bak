library IEEE;
use IEEE.Std_Logic_1164.all;
use ieee.numeric_std.all;

ENTITY sad IS
    GENERIC (
        datA_WIDTH : natural := 8;
        datA_WIDTH32 : natural := 32;
        datA_WIDTH14 : natural := 14
    );
    PORT (
        a, b : in unsigned (datA_WIDTH32-1 downto 0);
        clk : in std_logic;
        iniciar : in std_logic;
        rst : in std_logic;
        pronto : out std_logic;
        fim : out std_logic_vector(3 downto 0);
        result : out std_logic_vector(datA_WIDTH14-1 downto 0)
    );
END entity;

architecture arch of sad is
    signal ler, zi,ci,zsoma, csoma,cpA, cpB, csad_reg, menor : std_logic;
    
    component sad_bo is
        generic (
            datA_WIDTH : natural := 8;
            datA_WIDTH32 : natural := 32;
            datA_WIDTH14 : natural := 14;
            datA_WIDTH_end : natural := 5
        );
        
        port (
            a, b : in unsigned (datA_WIDTH32-1 downto 0);
            clk : in std_logic;
				ler, zi,ci,zsoma, csoma,cpA, cpB, csad_reg : in std_logic;
				menor: out std_logic;
				fim : out std_logic_vector(3 downto 0);
            result : out std_logic_vector(datA_WIDTH14-1 downto 0)
        );
    end component;
    
    component sad_controle is
        port (
            clk : in std_logic;
            iniciar : in std_logic;
            menor : in std_logic;
            rst : in std_logic;
            pronto, ler, zi, ci, zsoma, csoma,cpa, cpb, csad_reg : out std_logic
        );
    end component;
begin
    sad_control : sad_controle port map(clk, iniciar, menor, rst, pronto, ler, zi, ci, zsoma, csoma, cpa, cpb, csad_reg);
	 sad_operacional: sad_bo generic map (DATA_WIDTH14 => DATA_WIDTH14) port map( a,b,clk,ler,zi,ci,zsoma,csoma,cpA,cpb,csad_reg,menor,fim,result((DATA_WIDTH14-1) downto 0));
end architecture;