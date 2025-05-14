# EJERCICIOS CAPITULO 3 :skull_and_crossbones:

## 1.- MENCIONE LOS TRES TIPOS DE DECLARACIONES CONCURRENTES EN VHDL

- Asignación de señales.
- Instrucción `process`.
- Instalación de componentes.

## 2.- INDIQUE QUÉ TIPO DE INSTRUCCIONES SE USAN EN LAS DECLARACIONES CONDICIONALES ASIGNADAS A UNA SEÑAL

- `when ... else`
- `with ... select ... when`

## 3.- ORDEN DE EJECUCIÓN DE LOS OPERADORES LÓGICOS EN VHDL

1. NOT
2. AND, NAND
3. OR, NOR
4. XOR, XNOR

## 4.- EXPRESIÓN EQUIVALENTE EN VHDL

$$
X = (a + b) \cdot (c \oplus d) = (a\quad OR \quad b)\quad AND \quad(c\quad XOR \quad d)
$$
$$
F = (a + c + d) + (a \cdot \overline{c} \cdot \overline{d}) \cdot (a + b) = (a \quad OR \quad c \quad OR \quad d) \quad OR \quad (c \quad AND \quad NOT \quad d \quad AND \quad NOT \quad c) \quad AND \quad (a \quad OR \quad b)
$$
$$
Z = (x \cdot w \gg y) + (\overline{x} \overline{\oplus} \overline{y}) = (x \quad AND \quad w \quad AND \quad y) \quad OR \quad (x \quad XNOR \quad y)
$$

## 5.- PRINCIPAL DIFERENCIA ENTRE LAS DECLARACIONES SECUENCIALES Y LAS DECLARACIONES CONCURRENTES

Las declaraciones secuenciales como su nombre lo dice, se ejecutan en secuencia (una detrás de otra) dentro de un proceso o subprograma, mientras que las declaraciones concurrentes se ejecutan en paralelo, simulando así el comportamiento del hardware.

## 6.- MENCIONE QUÉ TIPO DE INSTRUCCIONES UTILIZAN LAS DECLARACIONES SECUENCIALES

- `if ... then ... else`
- `case ... when`
- `loop`
- Asignación de variables.

## 7.- QUÉ INSTRUCCIÓN SE UTILIZA CUANDO SE REQUIEREN MÁS CONDICIONES DE EVALUACIÓN EN UN PROCESO

- `elsif` dentro de una estructura condicional `if ... then ... else`

## 8.- OPERADORES ARITMÉTICOS QUE SE UTILIZAN EN VHDL

- `+`, `-`, `*`, `/`, `**`, `mod`, `rem` y `abs`

## 9.- LIBRERÍA Y PAQUETES DONDE SE ENCUENTRAN LOS OPERADORES ARITMÉTICOS QUE SE UTILIZAN EN VHDL

- Libreria: `IEEE`
- Paqutería: `std_logic_1164` y `numeric_std`

## 10.- UN CIRCUITO COMPARADOR DE 3 BITS RECIBE DOS NÚMEROS DE 3 BITS X —> X2, XI, XO & Z —> Z2, ZI, ZO. DISEÑE UN PROGRAMA EN VHDL QUE PRODUZCA UNA SALIDA F = 1 SI Y SÓLO SI X < Z

<div>
  <img src="../../../imgs/04 - VHDL/10.png"/>
</div>

```vhd
-- Seccion de librerias
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Declaración de la entidad
entity comparador_3b is
    port(
        --* ENTRADAS
        X, Z : in std_logic_vector(2 downto 0);
        --* SALIDAS
        F : out std_logic
    );
end comparador_3b;

-- Arquitectura
architecture funcional of comparador_3b is
begin
    F <= '1' when unsigned(X) < unsigned(Z) else '0';
end funcional;
```

## 11.- PROGRAMA EN VHDL QUE DESCRIBA EL FUNCIONAMIENTO DEL CIRCUITO MOSTRADO EN LA FIGURA SIGUIENTE

<div>
  <img src="../../../imgs/04 - VHDL/11.png"/>
</div>

```vhd
-- Seccion de librerias
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la entidad
entity c_logico is
    port(
        --* ENTRADAS
        X, Y, Z : in std_logic;
        --* SALIDAS
        F1, F2 : out std_logic
    );
end c_logico;

-- Arquitectura
architecture funcional of c_logico is
begin
    F1 <= (not X and Y) or (X and not Z);
    F2 <= not (X or Z) and not Y;
end funcional;
```

## 12.- SE REQUIERE UN PROGRAMA EN VHDL DE UN CIRCUITO DECODIFICADOR DE 2 A 4, SEGÚN SE MUESTRA EN EL SIGUIENTE DIAGRAMA. UTILICE ESTRUCTURAS DEL TIPO IF-THEN-ELSIF

<div>
  <img src="../../../imgs/04 - VHDL/11.png"/>
</div>

```vhd
-- Seccion de librerias
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la entidad
entity deco_2a4 is
    port(
        --* ENTRADAS
        A, B, EN : in std_logic;
        --* SALIDAS
        Y : out std_logic_vector(3 downto 0)
    );
end deco_2a4;

-- Arquitectura
architecture funcional of deco_2a4 is
begin
    process(A, B, EN)
    begin
        -- Habilitación de enable
        if (EN  = '0')
            -- Inicio de proceso de decodificación
            if (A <= '0' and B <= '0') then
                Y <= '0001';
            elsif (A <= '0' and B <= '1') then
                Y <= '0010';
            elsif (A <= '1' and B <= '0') then
                Y <= '0100';
            elsif (A <= '1' and B <= '1') then
                Y <= '1000';
            end if;
        else
        -- Salidas apagadas por el enable deshabilitado
        Y <= '0000';
        end if;
    end process;
end funcional;
```

## 13.- ELABORE UN PROGRAMA DE UN CIRCUITO TRIESTADO OCTAL COMO EL DE LAS FIGURAS

<div>
  <img src="../../../imgs/04 - VHDL/12.png"/>
</div>

```vhd
-- Seccion de librerias
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la entidad
entity buffer_3e is
    port(
        --* ENTRADAS
        G1, G2 : in std_logic;
        A : in std_logic_vector(7 downto 0);
        --* SALIDAS
        Y : out std_logic_vector(7 downto 0)
    );
end buffer_3e;

-- Arquitectura
architecture funcional of buffer_3e is
begin
    process(G1, G2, A)
    begin
        -- Habilitación del circuito
        if (G1  == '0' and G2 == '0') then
            -- Buffer habilitado A -> Y
            Y <= A;
        else
        -- Salidas en alta imbedancia
        Y <= (others => 'Z');
        end if;
    end process;
end funcional;
```

## 14.- DISEÑE UN PROGRAMA DE UN MULTIPLEXOR DE 1 BIT CON OCHO ENTRADAS COMO EL QUE SE ILUSTRA EN LA FIGURA SIGUIENTE. IMPLEMENTE EL ALGORITMO CON BASE EN LA TABLA DE VERDAD ADJUNTA

<div>
  <img src="../../../imgs/04 - VHDL/13.png"/>
</div>

```vhd
-- Seccion de librerias
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la entidad
entity mux_8a1 is
    port(
        --* ENTRADAS
        A, B, C, EN : in std_logic;
        E : in std_logic_vector(7 downto 0);
        --* SALIDAS
        Y : out std_logic
    );
end mux_8a1;

-- Arquitectura
architecture funcional of mux_8a1 is
signal selec : integer range 0 to 7;

begin
    selec <= to_integer(unsigned(C & B & A));

    process(EN, selec, E)
    begin
        -- Habilitación del circuito
        if EN = '1' then
            Y <= '0';
        else
            Y <= E(selec);
        end if;
    end process;
end funcional;
```

## 15.- PROGRAMA EN VHDL QUE PRODUZCA UN DECODIFICADOR BINA RIO DE 2 X 4 COMO UN CIRCUITO DEMULTIPLEXOR DE CUATRO SALIDAS Y UN BIT

```vhd
-- Seccion de librerias
library IEEE;
use IEEE.std_logic_1164.all;

-- Declaración de la entidad
entity demux_1a4 is
    port(
        --* ENTRADAS
        Datos, En : in std_logic;
        Sel : in std_logic_vector(1 downto 0);
        --* SALIDAS
        Y : out std_logic_vector(3 downto 0)
    );
end demux_1a4;

-- Arquitectura
architecture funcional of demux_1a4 is
begin
    process(Datos, Sel, En)
    begin
        -- Habilitación del circuito
        if En = '1' then
            case Sel is
                when "00" => Y(0) <= Datos;
                when "01" => Y(1) <= Datos;
                when "10" => Y(2) <= Datos;
                when "11" => Y(3) <= Datos;
                when other => Y <= (others => '0');
            end case;
        end if;
    end process;
end funcional;
```