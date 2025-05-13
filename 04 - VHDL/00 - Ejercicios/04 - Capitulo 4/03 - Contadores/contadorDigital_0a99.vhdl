-- #########################################################################################
--  Archivo         :   contadorDigital_0a99.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Realizar un programa que cuente de 0 a 99 y despliegue en dos
--                      displays de 7 segmentos la cuenta (Decenas y Unidades).
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
        display_dec, display_uni : out std_logic_vector(3 downto 0) -- Tipo BCD
    );
end entity contador;

-- Declaración de la Arquitectura
architecture funcional of contador is
    signal unidades : unsigned(3 downto 0) := (others => '0');
    signal decenas : unsigned(3 downto 0) := (others => '0');
begin
    process(Clk, Rst)
    begin
        if Rst = '1' then
            -- RESET GLOBAL
            unidades <= (others => '0');
            decenas <= (others => '0');
        elsif rising_edge(Clk) then
            -- UNIDADES
            if unidades = 9 then
                -- Reset unidades
                unidades <= (others => '0');
                -- DECENAS
                if decenas = 9 then
                    -- Reset decenas
                    decenas <= (others => '0');
                else
                    -- Conteo decenas
                    decenas <= decenas + 1;
                end if;
            -- Conteo decenas
            else
                unidades <= unidades + 1;
            end if;
        end if;
    end process;

    -- Desplegado en 7 segmentos
    display_uni <= unidades;
    display_dec <= decenas;
end architecture funcional;