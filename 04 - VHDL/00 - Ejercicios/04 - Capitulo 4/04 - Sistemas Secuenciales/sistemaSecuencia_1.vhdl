-- #########################################################################################
--  Archivo         :   sistemaSecuencia_1.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Declaración de la Entidad
entity sys_sec is
    port (
        --* ENTRADAS
        Clk, Rst, X : in std_logic;
        --* SALIDAS
        Y : out std_logic
    );
end entity sys_sec;

-- Declaración de la Arquitectura
architecture funcional of sys_sec is
    type tipo_edo is (A, B, C, D, E);
    signal edo_actual, edo_sig : tipo_edo;

    signal salida : std_logic;
begin
    --* REGISTRO DE ESTADO
    registro_edo :
        process(Clk, Rst)
        begin
            if Rst = '1' then
                -- RESET GLOBAL
                edo_actual <= A;
            elsif rising_edge(Clk) then
                edo_actual <= edo_sig;
                Y <= salida;
            end if;
    end process registro_edo;

    --* LOGICA DE SALIDA
    logica_edo_salida :
        process(edo_actual, X)
        begin
            case edo_actual is
                when A =>
                    if X = '0' then
                        edo_sig <= B; salida <= '0';
                    else
                        edo_sig <= E; salida <= '0';
                    end if;
                when B =>
                    if X = '0' then
                        edo_sig <= A; salida <= '1';
                    else
                        edo_sig <= C; salida <= '1';
                    end if;
                when C =>
                    if X = '0' then
                        edo_sig <= B; salida <= '0';
                    else
                        edo_sig <= C; salida <= '1';
                    end if;
                when D =>
                    if X = '0' then
                        edo_sig <= C; salida <= '0';
                    else
                        edo_sig <= E; salida <= '0';
                    end if;
                when E =>
                    if X = '0' then
                        edo_sig <= D; salida <= '1';
                    else
                        edo_sig <= A; salida <= '0';
                    end if;
            end case;
    end process logica_edo_salida;
end architecture funcional;