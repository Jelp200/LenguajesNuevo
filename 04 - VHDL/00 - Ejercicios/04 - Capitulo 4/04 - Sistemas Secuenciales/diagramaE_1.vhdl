-- #########################################################################################
--  Archivo         :   diagramaE_1.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Realizar un programa que resuelva un diagrama de estados.
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Declaración de la Entidad
entity medo_4 is
    port (
        --* ENTRADAS
        Clk, Rst, Entrada : in std_logic;
        --* SALIDAS
        Salida : out std_logic
    );
end entity medo_4;

-- Declaración de la Arquitectura
architecture funcional of medo_4 is
    type tipo_edo is (A, B, C, D);
    signal edo_actual, edo_sig : tipo_edo;
begin
    --* REGISTRO DEL ESTADO.
    registro_edo :
        process(Clk, Rst)
        begin
            if Rst = '1' then
                -- RESET GLOBAL
                edo_actual <= A;
            elsif rising_edge(Clk) then
                edo_actual <= edo_sig;
            end if;
    end process registro_edo;

    --* LOGICA DE SIG. ESTADO Y SALIDA
    logica_edo_salida :
        process(edo_actual, Entrada)
        begin
            case edo_actual is
                -- ESTADO 'A'
                when A =>
                    if Entrada = '0' then
                        edo_sig <= D;
                        Salida <= '0';
                    else
                        edo_sig <= B;
                        Salida <= '1';
                    end if;
                -- ESTADO 'B'
                when B =>
                    if Entrada = '0' then
                        edo_sig <= C;
                        Salida <= '0';
                    else
                        edo_sig <= D;
                        Salida <= '1';
                    end if;
                -- ESTADO 'C'
                when C =>
                    if Entrada = '0' then
                        edo_sig <= D;
                        Salida <= '0';
                    else
                        edo_sig <= B;
                        Salida <= '0';
                    end if;
                -- ESTADO 'D'
                when D =>
                    if Entrada = '0' then
                        edo_sig <= D;
                        Salida <= '0';
                    else
                        edo_sig <= A;
                        Salida <= '1';
                    end if;
            end case;
    end process logica_edo_salida;
end architecture funcional;