-- #########################################################################################
--  Archivo         :   registroSerieParalelo_2.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Realizar un programa que realice la funcion logica de un registro de
--                      desplazamiento con entrada serie dual/paralelo y salida paralelo.
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la Entidad
entity registro_desplz is
    port (
        --* ENTRADAS
        Clk, Clr, entrada_serie_d, entrada_serie_i,  S0, S1 : in std_logic;
        entrada_paralela : in std_logic_vector(3 downto 0);                 -- A, B, C, D
        --* SALIDAS
        salida_paralela : out std_logic_vector(3 downto 0)                  -- Qa, Qb, Qc, Qd
    );
end entity registro_desplz;

-- Declaración de la Arquitectura
architecture funcional of registro_desplz is
    signal registro : std_logic_vector(3 downto 0);
begin
    process(Clk, Clr)
    begin
        if Clr = '1' then                                                   -- Clear (salidas a 0)
            registro <= (others => '0');
        elsif rising_edge(Clk) then
            case S0 & S1 is
                when "00" =>                                                -- Mantiene el estado
                    registro <= registro;
                when "01" =>                                                -- Desplz. Der.
                    registro <= entrada_serie_i & registro(3 downto 1);
                when "10" =>                                                -- Desplz. Izq.
                    registro <= registro(2 downto 1) & entrada_serie_d;
                when "11" =>                                                -- Carga paralela
                    registro <= entrada_paralela;
                when others =>
                    registro <= registro;
            end case;
        end if;
    end process;

    salida_paralela <= registro;
end architecture funcional;