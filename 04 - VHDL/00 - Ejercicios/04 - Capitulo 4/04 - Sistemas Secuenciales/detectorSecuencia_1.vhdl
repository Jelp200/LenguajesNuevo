-- #########################################################################################
--  Archivo         :   detectorSecuencia_1.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                     Detector de secuencia que produce una salida Z=1 sólo cuando en la
--                     señal de entrada X se produce la siguiente secuencia X = 110011
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Declaración de la Entidad
entity det_sec is
    port (
        --* ENTRADAS
        Clk, Rst, X : in std_logic;
        --* SALIDAS
        Z : out std_logic
    );
end entity det_sec;

-- Declaración de la Arquitectura
architecture funcional of det_sec is
    type tipo_edo is (S0, S1, S2, S3, S4, S5, S6);
    signal edo_actual, edo_sig : tipo_edo;
begin
    --* REGISTRO DE ESTADO
    registro_edo :
        process(Clk, Rst)
        begin
            if Rst = '1' then
                -- RESET GLOBAL
                edo_actual <= S0;
            elsif rising_edge(Clk) then
                edo_actual <= edo_sig;
            end if;
    end process registro_edo;

    --* LOGICA DE SALIDA
    logica_edo_salida :
        process(edo_actual, X)
        begin
            case edo_actual is
                when S0 =>
                    if X = '1' then
                        edo_sig <= S1;
                    else
                        edo_sig <= S0;
                    end if;
                    Z <= '0';
                when S1 =>
                    if X = '1' then
                        edo_sig <= S2;
                    else
                        edo_sig <= S0;
                    end if;
                    Z <= '0';
                when S2 =>
                        if X = '0' then
                        edo_sig <= S3;
                    else
                        edo_sig <= S0;
                    end if;
                    Z <= '0';
                when S3 =>
                    if X = '0' then
                        edo_sig <= S4;
                    else
                        edo_sig <= S0;
                    end if;
                    Z <= '0';
                when S4 =>
                    if X = '' then
                        edo_sig <= S;
                    else
                        edo_sig <= S;
                    end if;
                    Z <= '0';
                when S5 =>
                    if X = '1' then
                        edo_sig <= S6;
                    else
                        edo_sig <= S0;
                    end if;
                    Z <= '0';
                when S6 =>
                    if X = '1' then
                        edo_sig <= S0;
                    else
                        edo_sig <= S0;
                    end if;
                    -- Se activa la salida cuando se detecta la secuencia completa
                    Z <= '1';
            end case;
    end process logica_edo_salida;
end architecture funcional;