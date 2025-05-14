-- #########################################################################################
--  Archivo         :   sistemaSecuencia_2.vhdl
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
entity maquina_ref is
    port (
        --* ENTRADAS
        Clk, Rst : in std_logic;
        Moneda : in unsigned(3 downto 0);
        --* SALIDAS
        Cambio : out std_logic_vector(3 downto 0);
        Estado : out std_logic_vector(1 downto 0)
    );
end entity maquina_ref;

-- Declaración de la Arquitectura
architecture funcional of maquina_ref is
    type tipo_edo is (S0, S1, S2, S3);
    signal edo_actual, edo_sig : tipo_edo;

    signal cambio_acum : integer range 0 to 5 := 0;
begin
    --* REGISTRO DE ESTADO
    registro_edo :
        process(Clk, Rst)
        begin
            if Rst = '1' then
                -- RESET GLOBAL
                edo_actual <= S0;
                cambio_acum <= edo_sig;
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
                -- Espera moneda
                if Moneda = "0101" then -- $5.00
                    edo_sig <= S3; -- Pago exacto, no hay cambio
                    cambio_acum <= 0;
                elsif Moneda = "1010" then -- $10.00
                    edo_sig <= S2; -- Dar cambio de $5.00
                    cambio_acum <= 5;
                elsif Moneda = "1011" then -- $20.00
                    edo_sig <= S2; -- Dar cambio de $15.00
                    cambio_acum <= 15;
                else
                    edo_sig <= S0; -- Moneda inválida, mantener en S0
                end if;

                when S1 =>
                    -- Moneda válida introducida
                    edo_sig <= S2; -- Ir a procesar cambio

                when S2 =>
                    -- Procesar cambio
                    if cambio_acum >= 5 then
                        cambio_acum <= cambio_acum - 5; -- Dar una moneda de $5.00
                        Cambio <= "0101"; -- Salida de cambio
                    else
                        edo_sig <= S3; -- Cambio completo
                        Cambio <= "0000"; -- Ningún cambio
                    end if;

                when S3 =>
                    -- Cambio completado
                    edo_sig <= S0; -- Regresar al estado inicial
                    cambio_acum <= 0;
            end case;
    end process logica_edo_salida;

    Estado <= std_logic_vector(to_unsigned(to_integer(edo_actual), 2));
end architecture funcional;