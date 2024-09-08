/*
** #########################################################################################
**  Archivo         :   01 - 56 - constApuntadores.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Este programa muestra cómo utilizar const para proteger los datos a
**                      los que apunta un apuntador.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// PROTOTIPO(S) DE FUNCION(ES)
void imprimirConst(const int *pNumero);

// FUNCION PRINCIPAL
int main(){
    int numero = 10;
    imprimirConst(&numero);
    return 0;
}

// FUNCION(ES)
void imprimirConst(const int *pNumero) {
    printf("El número es: %d\n", *pNumero);
    // *pNumero = 20;       Esto generaría un error
}