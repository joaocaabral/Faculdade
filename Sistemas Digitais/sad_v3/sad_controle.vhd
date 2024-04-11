library ieee;
use ieee.std_logic_1164.all;

entity sad_controle is
    port (
            clk, rst, menor, iniciar : in std_logic;
            pronto, ler, zi, soma, ci, zsoma, csoma, csad_reg, cpa, cpb: out std_logic
    );
end sad_controle;

architecture arch of sad_controle is
    type tipo_estado is (s0, s1, s2, s3, s4, s5);
    signal estadoatual : tipo_estado;
begin
    process(rst, clk, iniciar, menor)
    begin
        if rst = '1' then
            estadoatual <= s0;
        elsif (rising_edge(clk)) then
            case estadoatual is
                when s0=>
                    pronto <= '1';
                    ler <= '0';
                    if iniciar = '1' then
                        estadoatual <= s1;
                    else
                        estadoatual <= s0;
                    end if;
                when s1=>
                    pronto <= '0';
                    zi <= '1';
                    ci <= '1';
                    zsoma <= '1';
                    csoma <= '1';
                    estadoatual <= s2;
                when s2=>
                    if menor = '1' then
                        estadoatual <= s3;
                    elsif menor = '0' then
                        estadoatual <= s5;
                    else
                        estadoatual <= s2;
                    end if;
                when s3=>
                        ler <= '1';
                        cpa <= '1';
                        cpb <= '1';
                        estadoatual <= s4;
                when s4=>
                        ler <= '0';
                        zi <= '0';
                        ci <= '1';
                        zsoma <= '0';
                        csoma <= '1';
                        estadoatual <= s2;
                when s5=>
                        csad_reg <= '1';
                        estadoatual <= s0;
            end case;
        end if;
    end process;
end arch;
