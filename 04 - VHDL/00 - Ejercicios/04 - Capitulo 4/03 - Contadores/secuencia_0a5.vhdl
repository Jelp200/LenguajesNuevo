-- #########################################################################################
--  Archivo         :   secuencia_0a5.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Disenar y programar un contador que realice la secuencia 0,1,3,5 y
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
        Q : out std_logic_vector(2 downto 0)        -- Q2, Q1, Q0
    );
end entity contador;

-- Declaración de la Arquitectura
architecture funcional of contador is
    signal conteo : unsigned(2 downto 0) := "000";
begin
    process(Clk, Rst)
    begin
        if Rst = '0' then                           -- Reset (salidas a 0)
            conteo <= "000";
        elsif rising_edge(Clk) then
            case conteo is
                when "000" => conteo <= "001";      -- 0 a 1
                when "001" => conteo <= "011";      -- 1 a 3
                when "011" => conteo <= "101";      -- 3 a 5
                when "101" => conteo <= "000";      -- 5 a 0
                when others =>conteo <= "000";
            end case;
        end if;
    end process;

    Q <= std_logic_vector(conteo);
end architecture funcional;