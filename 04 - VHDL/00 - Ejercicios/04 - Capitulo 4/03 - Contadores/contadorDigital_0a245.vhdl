-- #########################################################################################
--  Archivo         :   contadorDigital_0a245.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Realizar un programa que cuente de 0 a 245
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Declaración de la Entidad
entity contador is
    port (
        --* ENTRADAS
        Clk, Rst : in std_logic;
        --* SALIDAS
        Salida : out std_logic_vector(8 downto 0)
    );
end entity contador;

-- Declaración de la Arquitectura
architecture funcional of contador is
    signal contador : unsigned(8 downto 0) := (others => '0');
    signal cnta_max : unsigned(8 downto 0) := 245;
begin
    process(Clk, Rst)
    begin
        if Rst = '1' then
            -- RESET GLOBAL
            contador <= (others => '0');
        elsif rising_edge(Clk) then
            -- UNIDADES
            if contador = cnta_max then
                -- Reset
                contador <= (others => '0');
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;

    Salida <= contador;
end architecture funcional;