-- #########################################################################################
--  Archivo         :   plantilla.vhdl
--  Herramienta(s)  :   Visual Studio Code
--  Autores         :
--                      Jorge Peña
--  Descripcion     :
--                      Plantilla general para programar en VHDL
-- #########################################################################################

-- Sección de Librerías (opcional)
library nombre_de_la_libreria;
use nombre_de_la_libreria.nombre_del_paquete.all;
-- Es posible tener múltiples declaraciones de librerías y usos

-- Declaración de la Entidad
entity nombre_de_la_entidad is
    -- Declaración de puertos (interfaces con el exterior)
    port (
        nombre_del_puerto_1 : modo tipo_de_dato;
        nombre_del_puerto_2 : modo tipo_de_dato;
        ...
        nombre_del_puerto_n : modo tipo_de_dato
    );
end entity nombre_de_la_entidad;

-- Declaración de la Arquitectura
architecture nombre_de_la_arquitectura of nombre_de_la_entidad is
    -- Sección de declaraciones (opcional):
    --  - Señales (signals)
    --  - Constantes (constants)
    --  - Tipos definidos por el usuario (types)
    --  - Componentes (components)
    --  - Funciones (functions)
    --  - Procedimientos (procedures)
begin
    -- Sección de sentencias concurrentes (describen el comportamiento del circuito)
    --  - Asignaciones de señales concurrentes (<=' )
    --  - Instanciación de componentes (port map)
    --  - Sentencias de proceso (process)
    --  - Sentencias de bloque (block)
    --  - Sentencias de generación (generate)
end architecture nombre_de_la_arquitectura;

-- Declaración de Paquetes (opcional, en archivos separados generalmente)
package nombre_del_paquete is
    -- Declaraciones de tipos, constantes, funciones, procedimientos, etc.
end package nombre_del_paquete;

package body nombre_del_paquete is
    -- Implementaciones de funciones y procedimientos
end package body nombre_del_paquete;

-- Declaración de Configuraciones (opcional)
configuration nombre_de_la_configuracion of nombre_de_la_entidad is
    -- Especificación de la arquitectura a utilizar
    for nombre_de_la_instancia : nombre_del_component
        --  use entity nombre_de_la_libreria.nombre_de_la_entidad(nombre_de_la_arquitectura);
    end for;
end configuration nombre_de_la_configuracion;