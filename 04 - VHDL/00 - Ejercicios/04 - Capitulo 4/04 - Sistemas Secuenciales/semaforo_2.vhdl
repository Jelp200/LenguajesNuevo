-- #########################################################################################
--  Archivo         :   semaforo_1.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                     Controlador de semáforo para una intersección con dos direcciones:
--                     Norte-Sur (NS) y Este-Oeste (EO), utilizando sensores de entrada.
--
--                                                ║       ║
--                                                ║       ║
--                                                ║   N   ║
--                                            ┌──┐║       ║┌──┐
--                                     Sensor └──┘║       ║└──┘ Sensor
--                                 ═══════════════╝  ¤¤¤  ╚═══════════════
--                                        E          ¤¤¤          O
--                                 ═══════════════╗  ¤¤¤  ╔═══════════════
--                                            ┌──┐║       ║┌──┐
--                                     Sensor └──┘║       ║└──┘ Sensor
--                                                ║   S   ║
--                                                ║       ║
--                                                ║       ║
--
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Declaración de la Entidad
entity semaforo is
    port (
        --* ENTRADAS
        Clk, Rst, Sensor : in std_logic;
        --* SALIDAS
        NS_rojo, NS_ambar, NS_verde : out std_logic;
        EO_rojo, EO_ambar, EO_verde : out std_logic;
    );
end entity semaforo;

-- Declaración de la Arquitectura
architecture funcional of semaforo is
    type tipo_edo is (E1, E2, E3, E4);
    signal edo_actual, edo_sig : tipo_edo;

    signal contador : integer range 0 to 20 := 0;
begin
    --* REGISTRO DE ESTADO
    registro_edo :
        process(Clk, Rst)
        begin
            if Rst = '1' then
                -- RESET GLOBAL
                edo_actual <= E1;
                contador <= '0';
            elsif rising_edge(Clk) then
                edo_actual <= edo_sig;

                if contador < 20 then
                    contador <= contador + 1;
                else
                    contador <= 0;
                    
                    if Sensor then
                        edo_sig <= sig_edo(edo_actual);
                    else
                        edo_sig <= edo_actual;
                    end if;
                end if;
            end if;
    end process registro_edo;

    --* LOGICA DE SALIDA
    logica_edo_salida :
        process(edo_actual)
        begin
            case edo_actual is
                when E1 =>
                    NS_rojo <= '1'; NS_ambar <= '0'; NS_verde <= '0';
                    EO_rojo <= '0'; EO_ambar <= '0'; EO_verde <= '1';
                when E2 =>
                    NS_rojo <= '1'; NS_ambar <= '0'; NS_verde <= '0';
                    EO_rojo <= '0'; EO_ambar <= '1'; EO_verde <= '0';
                when E3 =>
                    NS_rojo <= '0'; NS_ambar <= '0'; NS_verde <= '1';
                    EO_rojo <= '1'; EO_ambar <= '0'; EO_verde <= '0';
                when E4 =>
                    NS_rojo <= '0'; NS_ambar <= '1'; NS_verde <= '0';
                    EO_rojo <= '1'; EO_ambar <= '0'; EO_verde <= '0';
            end case;
    end process logica_edo_salida;

    --* FUNCION PARA CONOCER EL PROXIMO ESTADO
    function sig_edo(eact : tipo_edo) return tipo_edo is
    begin
        case eact is
            when E1 => return E2;
            when E2 => return E3;
            when E3 => return E4;
            when E4 => return E1;
        end case;
    end function;

end architecture funcional;