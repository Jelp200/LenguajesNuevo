# EJERCICIOS DE TEORIA

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

-- Declaración de la entidad
entity comparador_3b is
    port(
        --* ENTRADAS
        X, Z : in std_logic_vector(2 downto 0);
        --* SALIDAS
        F : out std_logic
    );
end comprador_3b;

-- Arquitectura
architecture funcional of comparador_3b is
begin
    F <= '1' when unsigned(X) < unsigned(Z) else '0';
end funcional;
```

