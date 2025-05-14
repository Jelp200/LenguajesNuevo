-- #########################################################################################
--  Archivo         :   diagramaE_2.vhdl
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
entity medo_8 is
    port (
        --* ENTRADAS
        Clk, Rst, Entrada : in std_logic;
        --* SALIDAS
        Salida : out std_logic_vector(2 downto 0)
    );
end entity medo_8;

-- Declaración de la Arquitectura
architecture funcional of medo_8 is
    type tipo_edo is (s000, s001, s010, s011,
                      s100, s101, s110, s111);
    signal edo_actual, edo_sig : tipo_edo;
begin
    --* MAPEO DE ESTADOS
    mapeo_edo :
        process(edo_actual)
        begin
            case edo_actual is
                when s000 => Salida <= "000";
                when s001 => Salida <= "001";
                when s010 => Salida <= "010";
                when s011 => Salida <= "011";
                when s100 => Salida <= "100";
                when s101 => Salida <= "101";
                when s110 => Salida <= "110";
                when s111 => Salida <= "111";
            end case;
    end process mapeo_edo;

    --* REGISTRO DE ESTADO
    registro_edo :
        process(Clk, Rst)
        begin
            if Rst = '1' then
                -- RESET GLOBAL
                edo_actual <= s000;
            elsif rising_edge(Clk) then
                edo_actual <= edo_sig;
            end if;
    end process registro_edo;

    --* LOGICA DE SIG. ESTADO Y SALIDA
    logica_edo_salida :
        process(edo_actual, Entrada)
        begin
            case edo_actual is
                -- ESTADO 's000'
                when s000 =>
                    if Entrada = '0' then edo_sig <= s000;
                    else edo_sig <= s001;
                    end if;
                -- ESTADO 's001'
                when s001 =>
                    if Entrada = '0' then edo_sig <= s000;
                    else edo_sig <= s011;
                    end if;
                -- ESTADO 's010'
                when s010 =>
                    if Entrada = '0' then edo_sig <= s011;
                    else edo_sig <= s010;
                    end if;
                -- ESTADO 's011'
                when s011 =>
                    if Entrada = '0' then edo_sig <= s010;
                    else edo_sig <= s001;
                    end if;
                -- ESTADO 's100'
                when s100 =>
                    if Entrada = '0' then edo_sig <= s110;
                    else edo_sig <= s001;
                    end if;
                -- ESTADO 's101'
                when s101 =>
                    if Entrada = '0' then edo_sig <= s111;
                    else edo_sig <= s110;
                    end if;
                -- ESTADO 's110'
                when s110 =>
                    if Entrada = '0' then edo_sig <= s101;
                    else edo_sig <= s000;
                    end if;
                -- ESTADO 's111'
                when s111 =>
                    if Entrada = '0' then edo_sig <= s110;
                    else edo_sig <= s101;
                    end if;
            end case;
    end process logica_edo_salida;
end architecture funcional;