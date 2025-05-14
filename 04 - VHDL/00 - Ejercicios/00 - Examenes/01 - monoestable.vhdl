-- #########################################################################################
--  Archivo         :   monoestable.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Circuito monoestable sincrono.
--                          - Clk -> In -> Reloj del sistema
--                          - Rst -> In -> Reset asincrono
--                          - Trg -> In -> Disparo (flanco subida)
--                          - Q   -> In -> Pulso de salida (Duracion fija)
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Declaración de la Entidad
entity monoestable is
    port (
        --* ENTRADAS
        Clk, Rst, Trg : in std_logic;
        --* SALIDAS
        Q : std_logic
    );
end entity monoestable;

-- Declaración de la Arquitectura
architecture funcional of monoestable is
    -- Senales para guardar acciones locales
    signal contador : integer range 0 to 10 := 0;
    signal q_sen : std_logic := '0';
    signal trg_ant : std_logic := '0';

begin
    process(Clk, Rst)
    begin
        if Rst = '1' then
            -- RESET GLOBAL
            trg_ant <= '0';
            contador <= '0';
            q_sen <= '0';
        -- INICIO DEL PROCESO
        elsif rising_edge(Clk) then
            trg_ant <= Trg;

            -- Deteccion del flanco positivo
            if Trg = '1' and trg_ant = '0' then
                -- Inicio de cuenta regresiva
                contador <= 10;
                -- Activar salida
                q_sen <= '1';
            elsif contador > 0 then
                -- Conteo de cuenta regresiva
                contador <= contador - 1;
                -- Activar salida
                q_sen <= '1';
            else
                -- Desactivar salida
                q_sen <= '0';
            end if;
        end if;
    end process;

    -- ASIGNACION DE LA SENAL LOCAL A LA SENAL DE SALIDA
    Q <= q_sen;
    
end architecture funcional;