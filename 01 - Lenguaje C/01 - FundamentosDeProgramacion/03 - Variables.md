# VARIABLES EN C :croissant:
En C como en cualquier otro lenguaje de programación las variables son una parte muy importante para poder programar, las variables en la programación como en las matemáticas tienen un rol de carcasa, dicha carcasa guarda un valor deseado dentro de ella y este valor puede o no ser modificado a través del programa. Para poder declarar variables de manera correcta es necesario cuidar la sintaxis, semántica y no incluir simbolos tales como "!", "?", "#", etc., para ello véase como poder declarar variables con una sintaxis correcta de la siguiente forma:

- <b><i>Manera correcta</i></b>: `miVariable`, `Mi_Variable2`, `miVariable3`, `MiVariable4`.
- <b><i>Manera incorrecta</i></b>: `m!Variabl3`, `Mi Variable2`, `M1_Variabl 3`, `#M1Variab13`.

Dentro del lenguaje C se tienen dos tipos de variables:

- <b><i>Variables locales</i></b>. Variables las cuales son declaradas en cierto bloque de código y solo ahí pueden ser utilizadas dichas variables.
- <b><i>Variables globales</i></b>. Variables las cuales pueden ser utilizadas en todo el programa.

Lo anterior puede visualizarse cómo:
```C
/*
** #########################################################################################
**      Archivo: 03 - Variables.c
**      SO: Windows 10
**      Herramienta: Visual Studio Code
** #########################################################################################
*/

// DIRECTIVAS DE PREPROCESADOR
#include <stdio.h>

// DEFINES
#define nombreVariableGlobal valor

// VARIABLE GLOBAL
tipoDato nombreVariableGlobal;

// FUNCION PRINCIPAL
int main(void){
    tipoDato vairableLocal;
    /*
        ...
        Código en C
        ...
    */
    return 0;
}
```

Es posible observar que las <b><i>variables globales constan de dos tipos</i></b>, el <b><i>tipo simple</i></b> el cual permite cambiar el valor de la variable en cualquier punto del programa, y el tipo <b><i>define</i></b> que en si es una directiva de preprocesador que es utilizada para definir macros. Estos define en si no son variables y no tienen tipo, pero pueden actuar de manera similar a las constantes.

Regresar al menú de fundamentos <a href="../01 - FundamentosDeProgramacion/00 - Fundamentos.md">Click aquí</a>.