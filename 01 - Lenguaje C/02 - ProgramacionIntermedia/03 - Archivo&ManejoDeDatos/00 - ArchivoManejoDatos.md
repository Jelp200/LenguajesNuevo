# ARCHIVOS Y MANEJO DE DATOS :card_file_box:
El manejo de archiuvos en C es un proceso que permite crear, abrir, leer, escribir y cerrar operaciones en un archivo. Para ello, C provee de funciones tales cómo `fopen(), fwrite(), fread(), fseek(), fprintf()`, etc. Pero ¿Por qué es necesario manejar archivos en C? Hasta ahora, las operaciones que se realizan con el programa C se realizan en un indicador o terminal que no se almacena en ningún lugar. La salida se elimina cuando se cierra el programa. Pero en la industria del software, la mayoría de los programas se escriben para almacenar la información obtenida del programa. El uso del manejo de archivos es exactamente lo que la situación requiere.

Para entender por qué es importante el manejo de archivos, veamos algunas características del uso de archivos:

- Reutilización: Se puede acceder a los datos almacenados en el archivo, actualizarlos y eliminarlos en cualquier lugar y en cualquier momento, lo que proporciona una alta reutilización.
- Portabilidad: Sin perder ningún dato, los archivos se pueden transferir a otro sistema informático. El riesgo de codificación defectuosa se minimiza con esta característica.
- Eficiencia: Puede requerirse una gran cantidad de entrada para algunos programas. El manejo de archivos le permite acceder fácilmente a una parte de un archivo utilizando pocas instrucciones, lo que ahorra mucho tiempo y reduce la posibilidad de errores.
- Capacidad de almacenamiento: Los archivos le permiten almacenar una gran cantidad de datos sin tener que preocuparse por almacenar todo simultáneamente en un programa.

### <a href="">Lectura y Escritura de Archivos (Modo Texto y Binario).</a>
Un archivo puede ser clasificado en dos tipos basado en la forma de almacenar sus datos.

#### Archivos de Texto.
Un archivo de texto contiene datos en forma ASCII, por lo general es utilizado para almacenar un flujo de caracteres.

- Cada linea de texto en un archivo termina con una nueva línea de caracter `\n`.
- Puede leerse o escribirse por cualquier editor de texto.
- Generalmente se almacena con una extención `.txt`.
- Los archivos de texto pueden ser utilizados para almacenar los códigos fuente.

#### Archivos Binarios.
Un archivo de texto contiene datos en forma binaria, por lo general es utilizado para almacenar datos de forma similar que los que se guardan en memoria.

- Los archivos binarios solo se pueden crear desde un programa y su contenido solo puede ser leído por un programa.
- Son más seguros porque no son fáciles de leer.
- Generalmente se almacenan con la extensión de archivo `.bin`.

<div><img src="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/02 - Apuntadores (Avanzado)/TAC.png"></div>

#### Operaciones con Archivos.
Las operaciones con archivos se refieren a las diferentes formas en las cuales un archivo en C puede ser manejad, tales cómo:

- Crear un nuevo archivo. `fopen()` con atributos `"a", "a+", "w" o "w+"`.
- Abrir un archivo existente. `fopen()`.
- Leer un archivo. `fscanf() o fgets()`.
- Escribir un archivo. `frpintf() o fputs()`.
- Mover a un lugar especifico de un archivo. `fseek(), frewind()`.
- Cerrar un archivo. `fclose()`.

#### Funciones para las operaciones con Archivos.

| Operación de Archivo                           | Declaración                                               | Descripción                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|------------------------------------------------|-----------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **_fopen()_** - Abre un archivo                | `FILE *fopen(const char *nombreArchivo, const char *modo);` | La función `fopen()` es utilizada para abrir un archivo y así permitir su escritura, lectura, etc. En C, se declara un apuntador al archivo. `fopen()` crea un archivo si el archivo al cual apunta no existe.<br><br>`FILE *fp;`<br>`fp = fopen("nombreArchivo", "modo");`<br><br>Donde:<br><br>fp: Variable apuntador al archivo con el tipo de dato `FILE`.<br>`nombreArchivo`: Nombre del archivo con la dirección donde se encuentra dicho archivo.<br>`modo`: Se refiere a la operación la cual se realizará en el archivo (r, w, a, r+, w+, a+, etc.). |
| **_fclose()_** - Cierra un archivo             | `int fclose(FILE *fp);`                                     | `fclose()` permite cerrar el archivo el cual está siendo apuntado por el apuntador `fp`.<br><br>`fclose(fp);`                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| **_fgets()_** - Lee un archivo                 | `char *fgets(char *string, int n, FILE *fp);`               | `fgets()` el utilizada para leer el archivo línea por línea. Esta función puede utilizarse de la siguiente forma:<br><br>`fgets(buffer, size, fp);`<br><br>Donde:<br><br>`buffer`: Buffer donde se podrán los datos.<br>`size`: Tamaño del buffer.<br>`fp`: Apuntador al archivo.                                                                                                                                                                                                                                                                           |
| **_fprintf()_** - Escribe dentro de un archivo | `int frpintf(FILE *fp, const char *format, ...);`           | `fprintf()` estribe una cadena de datos dentro de un archivo apuntado por `fp`. Esto de puede realizar de la siguiente forma:<br><br>`fprintf(fp, "Datos");`<br><br>O:<br><br>`fprintf(fp, "texto %d", nombreVariable);`                                                                                                                                                                                                                                                                                                                                  |

#### Apuntadores a un Archivo.
Un apuntador a un archivo lo que hace es referenciar a una posición particular en el archivo abierto. Es utilizado para realizar todas las operaciones de los archivos tales como leer, escribir, cerrar, etc. La macro FILE sirve para declarar la variable puntero de un archivo. Su sintaxis es:

```C
FILE *nombreApuntadorArchivo;
```

#### Apertura de un Archivo.
Para abrir un archivo en C se ha visto que se utiliza la función <b><i>fopen()</i></b>, siendo su sintaxis:

```C
FILE *fopen(const char *nombreArchivo, const char *modoAcceso);
```

Siendo sus parametros:

- nombreArchivo: Nombre del archivo presente en el mismo directorio en el cual esta el código fuente. De otra forma, se requiere la dirección completa.
- modoAcceso: Especifica que tipo de operación se realizara al archivo.

Y sus valores de retorno:

- Si el archivo tiene una apertura correcta, retorna un apuntador de archivo a el.
- Si el archivo no tiene una apertura correcta, retorna un valor `NULL`.

#### Modos de Apertura de Archivos.
Los modos de apertura permiten especificar los tipos de operaciones las cuales se realizarán en el archivo abierto. Son pasados como argumentos a la función `fopen()`. Algunos modos de apertura o acceso son:

| Modos de Apertura | Descripción |
|---|---|
| **_r_**    | Busca el archivo. Si el archivo se abre con éxito, `fopen()` lo carga en memoria y establece un puntero que apunta al primer carácter. Si el archivo no se puede abrir, `fopen()` devuelve `NULL`. |
| **_rb_**   | Abre para lectura en modo binario. Si el archivo no existe, `fopen()` devuelve `NULL`. |
| **_w_**    | Abre para escritura en modo texto. Si el archivo existe, su contenido se sobrescribe. Si el archivo no existe, se crea uno nuevo. Devuelve `NULL` si no se puede abrir el archivo. |
| **_wb_**   | Abre para escritura en modo binario. Si el archivo existe, su contenido se sobrescribe. Si el archivo no existe, se crea uno nuevo. |
| **_a_**    | Busca el archivo. Si el archivo se abre con éxito, `fopen()` lo carga en memoria y establece un puntero que apunta al último carácter. Solo se abre en modo de añadir. Si el archivo no existe, se crea uno nuevo. Devuelve `NULL` si no se puede abrir el archivo. |
| **_ab_**   | Abre para añadir en modo binario. Los datos se añaden al final del archivo. Si el archivo no existe, se crea uno nuevo. |
| **_r+_**   | Busca el archivo. Si el archivo se abre con éxito, `fopen()` lo carga en memoria y establece un puntero que apunta al primer carácter. Devuelve `NULL` si no se puede abrir el archivo. |
| **_rb+_**  | Abre para lectura y escritura en modo binario. Si el archivo no existe, `fopen()` devuelve `NULL`. |
| **_w+_**   | Busca el archivo. Si el archivo existe, su contenido se sobrescribe. Si el archivo no existe, se crea uno nuevo. Devuelve `NULL` si no se puede abrir el archivo. |
| **_wb+_**  | Abre para lectura y escritura en modo binario. Si el archivo existe, su contenido se sobrescribe. Si el archivo no existe, se crea uno nuevo. |
| **_a+_**   | Busca el archivo. Si el archivo se abre con éxito, `fopen()` lo carga en memoria y establece un puntero que apunta al último carácter. Abre el archivo en modo de lectura y añadir. Si el archivo no existe, se crea uno nuevo. Devuelve `NULL` si no se puede abrir el archivo. |
| **_ab+_**  | Abre para lectura y añadir en modo binario. Si el archivo no existe, se crea uno nuevo. |

