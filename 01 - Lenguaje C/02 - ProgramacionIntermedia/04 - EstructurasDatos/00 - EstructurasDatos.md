# ESTRUCTURAS DE DATOS :building_construction:
Las estructuras de datos son bloques fundamentales en la construcción de programas. Las estructuras de datos definen como los datos se organizan, almacenan y manipulan dentro del programa. Entender las estructuras de datos es demasiado importante para tener un desarrollo eficiente y algoritmos efectivos.

Pero <b><i>¿Qué es una estructura de datos?</i></b> Una estructura de datos es un almacen el cual es utilizado para organizar, y como su nombre lo dice, almacenar datos. Es una forma de organizar los datos en una computadora para que se pueda acceder a ellos y actualizarlos de manera eficiente. Una estructua de datos no solo sirve organizar los datos. Sino tambien para procesar, recuperar y almacenar. Existen diferentes tipos de estructuras de datos, desde las más básicas, hasta las más avanzadas .

### Clasificación de las Estructuras de Datos.

<div><img href="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/04 - ED/TED.png"></div>

- <b><i>Estructuras de Datos Lineales.</i></b> La estructura de datos en la que los elementos de datos están dispuestos de forma secuencial o lineal, donde cada elemento está unido a sus elementos adyacentes anterior y siguiente, se denomina estructura de datos lineal (Arreglos, Pilas, Colas, Listas Enlazadas, etc.).
- <b><i>Estructuras de Datos Estaticas.</i></b> La estructura de datos estática tiene un tamaño de memoria fijo. Es más fácil acceder a los elementos de una estructura de datos estática (Arreglos).
- <b><i>Estructuras de Datos Dinamicas.</i></b>En una estructura de datos dinámica, el tamaño no es fijo. Puede actualizarse aleatoriamente durante el tiempo de ejecución, lo que puede considerarse eficiente en relación con la complejidad de la memoria (espacio) del código (Colas, Pilas, etc.).
- <b><i>Estructuras de Datos No Lineales.</i></b> Las estructuras de datos en las que los elementos de datos no se colocan de forma secuencial o lineal se denominan estructuras de datos no lineales. En una estructura de datos no lineal, es posible recorrer todos los elementos en una sola ejecución (Arbóles y Grafós).

### <a href="../../01 - FundamentosDeProgramacion/18 - Arreglos/00 - Arreglos.md">Arreglos (1D).</a>
Los arreglos son estructuras de datos lineales que almacenan una colección de datos del mismo tipo. Los elementos son almacenados de forma contigua en memoria, es decir, uno delante del otro, permitiendo el acceso en tiempo constante. Cada elemento tiene un número de índice único.

```C
tipoDato nombreArreglo[tamanoArreglo] = {elemento1, elemento2, ..., elementoN};
```

El arreglo `nombreArreglo` de tamaño `tamanoArreglo` se representa como:

$$
\text{nombreArreglo} = \begin{bmatrix}
\text{elemento1} \\
\text{elemento2} \\
\vdots \\
\text{elementoN}
\end{bmatrix}
$$

O de forma orizontal:

$$
\mathbf{nombreArreglo} = [elemento_1, elemento_2, \dots, elemento_n]
$$

### <a href="../../01 - FundamentosDeProgramacion/18 - Arreglos/00 - Arreglos.md">Arreglos (2D) o Matrices.</a>
Los arreglos de dos dimesiones o tambien llamados matrices, son estructuras de datos lineales que al igual que los arreglos simples, almacenan una colección de datos del mismo tipo.

```C
tipoDato nombreArreglo[numeroFilas][numeroColumnas] = {{datosFila}, {datosColumna}};
```

El arreglo `nombreArreglo` de tamaño `numeroFilas` x `numeroColumnas` se representa como:

$$
\text{nombreArreglo} = \begin{bmatrix}
\text{dato}_{11} & \text{dato}_{12} & \cdots & \text{dato}_{1n} \\
\text{dato}_{21} & \text{dato}_{22} & \cdots & \text{dato}_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
\text{dato}_{m1} & \text{dato}_{m2} & \cdots & \text{dato}_{mn}
\end{bmatrix}
$$

### <a href="../../01 - FundamentosDeProgramacion/22 - EntradasSalidasEstandar/00 - EntradaSalidasEstandar.md">Cadenas.</a>
Las cadenas de caracteres o strings, son utilizadas tipicamente para representar texto. Son consideradas un tipo de datos que permiten las manipulación y procesamiento de datos tipo texto en programas.

Regresar al menú de intermedio <a href="../00 - Intermedio.md">Click aquí</a>.