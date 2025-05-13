-- #########################################################################################
--  Archivo         :   registro4b.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Disenar un registro de 4b cuyo funcionamiento se encuentra regulado
--                      por las senales de control S0 y S1.
--
--                      ╔══════╦══════╦══════════════════╗
--                      ║  S0  ║  S1  ║ Accion           ║
--                      ╠══════╬══════╬══════════════════╣
--                      ║  0   ║  0   ║ Hold             ║
--                      ║  0   ║  1   ║ Desplz. Izq. SL  ║
--                      ║  1   ║  0   ║ Load             ║
--                      ║  1   ║  1   ║ Desplz. Der. SR  ║
--                      ╚══════╩══════╩══════════════════╝
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la Entidad
entity registro_4b is
    port (
        --* ENTRADAS
        S0, S1, Clk, Rst, L, R : in std_logic;
        D : in std_logic_vector(3 downto 0);
        --* SALIDAS
        Q : in std_logic_vector(3 downto 0)
    );
end entity registro_4b;

-- Declaración de la Arquitectura
architecture funcional of registro_4b is
    signal registro : std_logic_vector(3 downto 0);
begin
    process(Clk, Rst)
    begin
        if Rst = '1' then
            registro <= (others => '0');            -- Reset asincrono
        elsif rising_edge(Clk) then
            -- Se concatenan las senales de cntrl.
            case S0 & S1 is
                when "00" =>                        -- Se mantiene el edo.
                    registro <= registro;
                when "01" =>                        -- Desplz. Izq.
                    registro <= registro(2 downto 0) & L;
                when "10" =>                        -- Load.
                    registro <= D;
                when "11" =>                        -- Desplz. Der.
                    registro <= R & registro(3 downto 0);
                when others =>
                    registro <= registro;
            end case;
        end if;
    end process;

    Q <= registro;
end architecture funcional;