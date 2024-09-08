/*
** #########################################################################################
**  Archivo         :   01 - 04 - NumeroCaracter.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Realizar un programa que visualize la siguiente
**                      informacion en consola.
**                          Numero : [Numero ingresado]
**                          Caracter: [Caracter ingresado]
** #########################################################################################
*/
// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// FUNCION PRINCIPAL
int main(){
    int n = 0;
    char c;

    printf("\n\tDe el numero a visualizar: "); scanf("%i", &n);
    printf("\n\tDe el caracter a visualizar: "); scanf(" %c", &c);

    printf("\n\tNumero: %i", n);
    printf("\n\tCaracter: %c\n\n", c);
    return 0;
}