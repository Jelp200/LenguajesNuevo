-- #########################################################################################
--  Archivo         :   registroSerieParalelo_1.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Realizar un programa que realice la funcion logica de un registro de
--                      desplazamiento con entrada serie/paralelo y salida serie.
-- #########################################################################################

-- Sección de Librerías (opcional)
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la Entidad
entity registro_desplz is
    generic (N : integer := 4);                     -- #b del registro.
    port (
        --* ENTRADAS
        Clk, entrada_serie,  hab_paralela : in std_logic;
        entrada_paralela : in std_logic_vector(N-1 downto 0);
        --* SALIDAS
        salida_serie : out std_logic
    );
end entity registro_desplz;

-- Declaración de la Arquitectura
architecture funcional of registro_desplz is
    signal registro : std_logic_vector(N-1 downto 0);
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if hab_paralela = '1' then              -- Carga de datos paralela
                registro <= entrada_paralela;
            else                                    -- Desplazamiento a la derecha y entrada de datos serie
                registro <= entrada_serie & registro(N-1 downto 1);
            end if;
        end if;
    end process;

    salida_serie <= registro(0);                    -- Salida serie desde el b menos significativo
end architecture funcional;