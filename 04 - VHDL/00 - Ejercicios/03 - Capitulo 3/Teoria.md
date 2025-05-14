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
F = (a + c + d) + (a \cdot \overline{c} \cdot \overline{d}) \cdot (a + b) = (a\OR\c\OR\d)\OR\(c\AND\NOT\d\AND\NOT\c)\AND\(a\OR\b)
$$
$$
Z = (x \cdot w \gg y) + (\overline{x \oplus y} \overline{\oplus} \overline{y}) =
$$
