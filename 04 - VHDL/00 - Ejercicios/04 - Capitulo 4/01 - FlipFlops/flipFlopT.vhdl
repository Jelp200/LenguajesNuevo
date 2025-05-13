-- #########################################################################################
--  Archivo         :   flipFlopT.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Realizar un programa que describa el funcionamiento del Flip-Flop
--                      tipo T.
--
--                      ╔══════╦══════╦══════╗
--                      ║  T   ║  Q   ║ Qt+i ║
--                      ╠══════╬══════╬══════╣
--                      ║  0   ║  0   ║   0  ║
--                      ║  0   ║  1   ║   1  ║
--                      ║  1   ║  0   ║   1  ║
--                      ║  1   ║  1   ║   0  ║
--                      ╚══════╩══════╩══════╝
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la Entidad
entity ff_t is
    port (
        --* ENTRADAS
        T, Clk : in std_logic;
        --* SALIDAS
        Q, Qn : out std_logic
    );
end entity ff_t;

-- Declaración de la Arquitectura
architecture funcional of ff_t is
    signal Q_t : std_logic := '0';          -- Senal Q_t que permite guardar el estado
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if T = '1' then
                -- Toggle
                Q_t <= not Q_t;
            else
                -- Se mantiene el estado
                Q_t <= Q_t;
            end if;
        end if;
    end process;

    Q <= Q_t;
    Qn <= not Q_t;
end architecture funcional;