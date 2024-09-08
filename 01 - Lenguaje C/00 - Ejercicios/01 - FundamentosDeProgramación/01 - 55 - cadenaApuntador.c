/*
** #########################################################################################
**  Archivo         :   01 - 55 - cadenaApuntador.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Este programa muestra cómo manipular cadenas de texto utilizando
**                      apuntadores.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// PROTOTIPO(S) DE FUNCION(ES)
void imprimirString(char *str);

// FUNCION PRINCIPAL
int main(){
    char cadena[] = "Hola Mundo";
    imprimirString(cadena);
    return 0;
}

// FUNCION(ES)
void imprimirString(char *str) {
    while(*str != '\0'){
        printf("%c", *str);
        str++;
    }
    printf("\n");
}