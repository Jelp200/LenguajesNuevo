-- #########################################################################################
--  Archivo         :   contadorAD.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Declaración de la Entidad
entity sys_sec is
    port (
        --* ENTRADAS
        Clk, Rst, X : in std_logic;
        --* SALIDAS
        Q : out std_logic_vector(2 downto 0)
    );
end entity sys_sec;

-- Declaración de la Arquitectura
architecture funcional of sys_sec is
    signal contador : unsigned(2 downto 0);

begin
    process(Clk, Rst)
    begin
        if Rst = '1' then
            -- RESET GLOBAL
            contador <= "000";
        elsif rising_edge(Clk) then
            if X = '0' then
                contador <= contador + 1;
            else
                case to_integer(contador) is
                    when 0 => contador <= "000";
                    when 1 => contador <= "011";
                    when 2 => contador <= "101";
                    when 3 => contador <= "001";
                    when 4 => contador <= "010";
                    when 5 => contador <= "110";
                    when 6 => contador <= "111";
                    when 7 => contador <= "011";
                    when others => null;
                end case;
            end if;
        end if;
    end process;

    Q <= std_logic_vector(contador);

end architecture funcional;