# ARCHIVOS Y MANEJO DE DATOS :card_file_box:
El manejo de archiuvos en C es un proceso que permite crear, abrir, leer, escribir y cerrar operaciones en un archivo. Para ello, C provee de funciones tales cómo <b><i>fopen(), fwrite(), fread(), fseek(), fprintf()</i></b>, etc. Pero ¿Por qué es necesario manejar archivos en C? Hasta ahora, las operaciones que se realizan con el programa C se realizan en un indicador o terminal que no se almacena en ningún lugar. La salida se elimina cuando se cierra el programa. Pero en la industria del software, la mayoría de los programas se escriben para almacenar la información obtenida del programa. El uso del manejo de archivos es exactamente lo que la situación requiere.

Para entender por qué es importante el manejo de archivos, veamos algunas características del uso de archivos:

- Reutilización: Se puede acceder a los datos almacenados en el archivo, actualizarlos y eliminarlos en cualquier lugar y en cualquier momento, lo que proporciona una alta reutilización.
- Portabilidad: Sin perder ningún dato, los archivos se pueden transferir a otro sistema informático. El riesgo de codificación defectuosa se minimiza con esta característica.
- Eficiencia: Puede requerirse una gran cantidad de entrada para algunos programas. El manejo de archivos le permite acceder fácilmente a una parte de un archivo utilizando pocas instrucciones, lo que ahorra mucho tiempo y reduce la posibilidad de errores.
- Capacidad de almacenamiento: Los archivos le permiten almacenar una gran cantidad de datos sin tener que preocuparse por almacenar todo simultáneamente en un programa.

### <a href="">Lectura y Escritura de Archivos (Modo Texto y Binario).</a>
Un archivo puede ser clasificado en dos tipos basado en la forma de almacenar sus datos.

#### Archivos de Texto.
Un archivo de texto contiene datos en forma ASCII, por lo general es utilizado para almacenar un flujo de caracteres.

- Cada linea de texto en un archivo termina con una nueva línea de caracter ('\n').
- Puede leerse o escribirse por cualquier editor de texto.
- Generalmente se almacena con una extención ".txt".
- Los archivos de texto pueden ser utilizados para almacenar los códigos fuente.

#### Archivos Binarios.
Un archivo de texto contiene datos en forma binaria, por lo general es utilizado para almacenar datos de forma similar que los que se guardan en memoria.

- Los archivos binarios solo se pueden crear desde un programa y su contenido solo puede ser leído por un programa.
- Son más seguros porque no son fáciles de leer.
- Generalmente se almacenan con la extensión de archivo ".bin".

<div><img src="../../../imgs/01 - Lenguaje C/02 - ProgramacionIntermedia/02 - Apuntadores (Avanzado)/TAC.png"></div>

#### Operaciones con Archivos.
Las operaciones con archivos se refieren a las diferentes formas en las cuales un archivo en C puede ser manejad, tales cómo:

- Crear un nuevo archivo. <b><i>fopen()</i></b> con atributos <b><i>"a", "a+", "w" o "w+"</i></b>.
- Abrir un archivo existente. <b><i>fopen()</i></b>.
- Leer un archivo. <b><i>fscanf() o fgets()</i></b>.
- Escribir un archivo. <b><i>frpintf() o fputs()</i></b>.
- Mover a un lugar especifico de un archivo. <b><i>fseek(), frewind()</i></b>.
- Cerrar un archivo. <b><i>fclose()</i></b>.

#### Funciones para las operaciones con Archivos.