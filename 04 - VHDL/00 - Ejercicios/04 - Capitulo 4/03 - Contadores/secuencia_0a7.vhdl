-- #########################################################################################
--  Archivo         :   secuencia_0a7.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Disenar y programar un contador que realice la secuencia 0 a 7 y
--                      reta el ciclo. El circuito debe contar con una señal de reset activo
--                      en bajo, que coloca las salidas Q en estado bajo.
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
        Q : out std_logic_vector(2 downto 0)
    );
end entity contador;

-- Declaración de la Arquitectura
architecture funcional of contador is
    signal conteo : unsigned(2 downto 0) := "000";
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Rst = '0' then
                -- Reset
                conteo <= "000";
            elsif conteo = "111" then
                -- Reinicio
                conteo <= "000";
            else
                -- Conteo
                conteo <= conteo + 1;
            end if;
        end if;
    end process;

    Q <= std_logic_vector(conteo);
end architecture funcional;