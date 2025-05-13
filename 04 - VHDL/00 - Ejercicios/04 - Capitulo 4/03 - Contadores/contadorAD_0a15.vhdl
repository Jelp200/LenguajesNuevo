-- #########################################################################################
--  Archivo         :   contadorAD_0a15.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Programar un circuito contador ascendente / descendente del 0 al 15 
--                      mediante una señal de control X. Si X=0, el contador cuenta ascen_
--                      dente, si X= 1, el contador cuenta descendente.
--
--                      Existen dos señales de salida denominadas Z1 y Z2 que se activan de 
--                      la siguiente forma:
--
--                      - Z1 = 1; Cuando el contador se encuentra en los estados pares, en
--                        caso contrario Z1 = 0. 
--                      - Z2 = 1; Cuando el contador se encuentra en los estados impares, en
--                        caso contrario Z2=0
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Declaración de la Entidad
entity contador is
    port (
        --* ENTRADAS
        Clk, Rst, X : in std_logic;
        --* SALIDAS
        Z1, Z2 : out std_logic;
        Q : out std_logic_vector(1 downto 0)
    );
end entity contador;

-- Declaración de la Arquitectura
architecture funcional of contador is
    signal conteo : unsigned(3 downto 0) := "0000";
begin
    process(Clk, Rst)
    begin
        if Rst = '1' then
            -- Reset
            conteo <= "0000";
        elsif rising_edge(Clk) then
            -- Modo ascendente
            if X = 0 then
                if conteo = "11111" then       -- Conteo = 3
                    conteo <= "00000";         -- Reset
                else
                    conteo <= conteo + 1;      -- Incremento
                end if;
            -- Modo descendente
            else
            if X = 1 then
                if conteo = "0000" then       -- Conteo = 3
                    conteo <= "1111";         -- Reset
                else
                    conteo <= conteo - 1;     -- Decremento
                end if;
            end if;
        end if;
    end process;

    Q <= std_logic_vector(conteo);
    -- Par
    Z1 <= not conteo(0);
    -- Impar
    Z2 <= conteo(0);
end architecture funcional;