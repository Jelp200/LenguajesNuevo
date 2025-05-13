-- #########################################################################################
--  Archivo         :   flipFlopJK.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Realizar un programa que describa el funcionamiento del Flip-Flop
--                      tipo JK.
--
--                      ╔══════╦══════╦══════╦══════╗
--                      ║  J   ║  K   ║  Q   ║ Qt+i ║
--                      ╠══════╬══════╬══════╬══════╣
--                      ║  0   ║  0   ║  0   ║   0  ║
--                      ║  0   ║  0   ║  1   ║   1  ║
--                      ║  0   ║  1   ║  0   ║   0  ║
--                      ║  0   ║  1   ║  1   ║   0  ║
--                      ║  1   ║  0   ║  0   ║   1  ║
--                      ║  1   ║  0   ║  1   ║   1  ║
--                      ║  1   ║  1   ║  0   ║   1  ║
--                      ║  1   ║  1   ║  1   ║   0  ║
--                      ╚══════╩══════╩══════╩══════╝
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la Entidad
entity ff_jk is
    port (
        --* ENTRADAS
        J, K, Clk : in std_logic;
        --* SALIDAS
        Q, Qn : out std_logic
    );
end entity ff_jk;

-- Declaración de la Arquitectura
architecture funcional of ff_jk is
    signal Q_t : std_logic := '0';          -- Senal Q_t que permite guardar el estado
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if J = '0' and K = '0' then
                -- Se mantiene el estado
                Q_t <= Q_t;
            elsif J = '0' and K = '1' then
                -- Reset
                Q_t <= '0';
            elsif J = '1' and K = '0' then
                -- Set
                Q_t <= '1';
            elsif J = '1' and K = '1' then
                -- Toggle
                Q_t <= not Q_t;
            end if;
        end if;
    end process;

    Q <= Q_t;
    Qn <= not Q_t;
end architecture funcional;