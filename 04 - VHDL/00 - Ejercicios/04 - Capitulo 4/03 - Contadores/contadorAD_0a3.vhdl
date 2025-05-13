-- #########################################################################################
--  Archivo         :   contadorAD_0a3.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Programar un circuito contador ascendente / descendente del 0 al 3 
--                      mediante una señal de control X. Si X=0, el contador cuenta ascen_
--                      dente, si X= 1, el contador cuenta descendente.
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la Entidad
entity contador is
    port (
        --* ENTRADAS
        Clk, Rst, X : in std_logic;
        --* SALIDAS
        Q : out std_logic_vector(1 downto 0)
    );
end entity contador;

-- Declaración de la Arquitectura
architecture funcional of contador is
    signal conteo : unsigned(1 downto 0) := "00";
begin
    process(Clk)
    begin
        if Rst = '1' then
            -- Reset
            conteo <= "00";
        elsif rising_edge(Clk) then
            -- Modo ascendente
            if X = 0 then
                if conteo = "11" then       -- Conteo = 3
                    conteo <= "00";         -- Reset
                else
                    conteo <= conteo + 1;   -- Incremento
                end if;
            -- Modo descendente
            else
            if X = 1 then
                if conteo = "00" then       -- Conteo = 3
                    conteo <= "11";         -- Reset
                else
                    conteo <= conteo - 1;   -- Decremento
                end if;
            end if;
        end if;
    end process;

    Q <= std_logic_vector(conteo);
end architecture funcional;