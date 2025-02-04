# ESTRUCTURAS DE DATOS :building_construction:
Las estructuras de datos son bloques fundamentales en la construcción de programas. Las estructuras de datos definen como los datos se organizan, almacenan y manipulan dentro del programa. Entender las estructuras de datos es demasiado importante para tener un desarrollo eficiente y algoritmos efectivos.

Pero <b><i>¿Qué es una estructura de datos?</i></b> Una estructura de datos es un almacen el cual es utilizado para organizar, y como su nombre lo dice, almacenar datos. Es una forma de organizar los datos en una computadora para que se pueda acceder a ellos y actualizarlos de manera eficiente. Una estructua de datos no solo sirve organizar los datos. Sino tambien para procesar, recuperar y almacenar. Existen diferentes tipos de estructuras de datos, desde las más básicas, hasta las más avanzadas .

### Clasificación de las Estructuras de Datos.

<div><img src="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/04 - ED/TED.png"></div>

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

### <a href="../../01 - FundamentosDeProgramacion/22 - EntradasSalidasEstandar/00 - EntradaSalidasEstandar.md">Cadenas.</a>
Las cadenas de caracteres o strings, son utilizadas tipicamente para representar texto. Son consideradas un tipo de datos que permiten las manipulación y procesamiento de datos tipo texto en programas.

### <a href="04 - 04 - Stack/04 - 04 - 01 - StackComplete.c">Pilas.</a>
Una pila o stack es una estructura de datos que almacena y recupera sus elementos atendiendo a un estricto orden. Estas pilas también son conocidas como estructuras <b><i>LIFO (Last-in, Fist-out)</i></b>, todas las insercciones y estracciones de elementos se realiza por un mismo estremo denominado cima de la pila.

#### Principio del LIFO.
A continucación los siguientes ejemplos permiten comprender de mejor forma el principio del LIFO.

- <b><i>Cortar jamón.</i></b> Cuando vamos al super y pedimos x cantidad de jamón lo que hace el carnícero es agarrar el jamón y comenzarlo a cortar, cuando van saliendo las rodajas de jamón el carnícero va apilandolas como salen, y si este ve que la rodaja que acaba de cortar y poner es más delgada o gruesa de lo que pedimos, este la quita inmediatamente.

- <b><i>Apliar cajas.</i></b> Al momento de apilar cajas lo que se hace es poner una ensima de otra, y si la caja que se puso al último no va ahí, esa misma caja es la que se quita.

#### Representación Gráfica de una Pila.

<div><img src="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/04 - ED/STCK.png"></div>

#### Tipos de pilas.
- <b><i>Pila de tamaño fijo.</i></b> Este tipo de pila, como su nombre lo dice, es una pila la cual no puede crecer o disminur en tamaño dinamicamente. Si la pila esta llena y se desea agregar algún otro elemento, un error de desbordamiento ocurre. Si la pila esta vacia y se desea eliminar un elemento, un error de desbordamiento ocurre igualmente.
- <b><i>Pila de tamaño dinamico.</i></b> Este tipo de pila, es una pila la cual puede crecer o disminur en tamaño dinamicamente. Cuando la pila está llena, aumenta automáticamente su tamaño para acomodar el nuevo elemento, y cuando está vacía, disminuye su tamaño. Este tipo de pila se implementa mediante una lista enlazada, ya que permite cambiar el tamaño de la pila fácilmente.

#### Operaciones Básicas en una Pila.

| Funciones    | Descripción    |
|---|---|
| **_push()_**    | Inserta un elemento en la pila.    |
| **_pop()_**    | Eelimina un elemento de la pila.    |
| **_top()_**    | Regresa el elemento superior de la pila.    |
| **_isEmpty()_**    | Retorna `true` si la pila esta vacía y `false` sino.    |
| **_isFull()_**    | Retorna `true` si la esta llena y `false` sino.    |

Para implementar la pila, necesitamos mantener la referencia al elemento superior.

#### <a href="04 - 04 - Stack/04 - 04 - 02 - Push.c">Push en la pila.</a>
La operación `push()` permite ingresar o insertar un elemento en la pila. Si la pila está llena, se ingresa a una condición de desbordamiento. El argoritmo de la `push()` operación es:

<div><img src="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/04 - ED/ASTCK.png"></div>

Esto puede verse como:

- Antes de insertar un elemento en la pila, se verifica si la pila está llena.
- Si la pila esta llena (`top == capacidad - 1`), la pila se desborda y no pueden ser insertados los elementos.
- De otra forma, si la pila no esta llena, se incrementa el valor superior (`top == capacidad + 1`) y el nuevo valor se inserta en la posición superior.
- Los elementos se pueden insertar dentro de la pila hasta alcanzar la capacidad de la misma.

#### <a href="04 - 04 - Stack/04 - 04 - 03 - Pop.c">Pop en la pila.</a>
La operación `pop()` permite eliminar un elemento en la pila. Los elementos son expulsados en el orden inverso del que se insertan o empujan. Si la pila esta vacía, se ingresa a una condición de desbordamiento:

<div><img src="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/04 - ED/ASTCK_2.png"></div>

Esto puede verse como:

- Antes de eliminar el elemento de la pila, se verifica si la pila esta vacía.
- Si la pila esta vacía (`top == -1`), entonces la pila se desborda y no pueden ser eliminados los elementos.
- De otra forma, se almacena el valor superior, decrementando el valor superior en 1 (`top = top - 1`) y se devuelve el valor almacenado superior.

Estas dos operaciones pueden verse gráficamente de la siguiente forma:

<div><img src="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/04 - ED/ASTCK_3.png"></div>

#### <a href="04 - 04 - Stack/04 - 04 - 04 - Top.c">Top o Peek en la pila.</a>
La operación `top()` o `peek()` permite visualizar el elemento en la parse superior o en la cima de la pila:

<div><img src="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/04 - ED/ASTCK_4.png"></div>

Siendo su algoritmo el siguiente:

- Antes de devolver o retornar el valor del elemento superior o en la cima, se verifica si la pila esta vacía.
- Si la pila está vacía (`top == -1`), se imprime simplemente `Pila vacía`.
- De otra forma, se devuelve el elemento almacenado en `index = top`.

#### <a href="04 - 04 - Stack/04 - 04 - 05 - isEmpty.c">Pila Vacía.</a>
La operación `isEmpty()` retorna `true` si la pila esta vacia, sino retorna `false`:

<div><img src="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/04 - ED/ASTCK_5.png"></div>

Siendo su algoritmo el siguiente:

- Verifica si el valor del elemento superior existe en la pila.
- Si (`top == -1`) significa que la pila esta vacía, entonces devuelve `true`.
- De otra forma, la pila no esta vacía, entonces devuelve `false`.

#### <a href="04 - 04 - Stack/04 - 04 - 06 - isFull.c">Pila Llena.</a>
La operación `isFull()` retorna `true` si la pila esta llena, sino retorna `false`:

<div><img src="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/04 - ED/ASTCK_6.png"></div>

Siendo su algoritmo el siguiente:

- Verifica si el valor del elemento superior existe en la pila.
- Si (`top = capacidad - 1`) significa que la pila esta llena, entonces devuelve `true`.
- De otra forma, la pila no esta llena, entonces devuelve `false`.

#### Implementaciones de las pilas.

- <a href=""><b><i>Implementación de una pila utilizando arreglos.</i></b></a>
- <a href=""><b><i>Implementación de una pila utilizando listas enlazadas.</i></b></a>

Regresar al menú de intermedio <a href="../00 - Intermedio.md">Click aquí</a>.