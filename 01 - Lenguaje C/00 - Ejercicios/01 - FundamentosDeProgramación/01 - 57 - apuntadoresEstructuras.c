/*
** #########################################################################################
**  Archivo         :   01 - 57 - apuntadoresEstructuras.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Este programa muestra cómo trabajar con apuntadores y estructuras.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// ESTRUCTURA(S)
struct Persona{
    char nombre[30];
    int edad;
};

// PROTOTIPO(S) DE FUNCION(ES)
void imprimirPersona(struct Persona *p);

// FUNCION PRINCIPAL
int main(){
    struct Persona persona = {"Juan", 25};
    imprimirPersona(&persona);
    return 0;
}

// FUNCION(ES)
void imprimirPersona(struct Persona *p) {
    printf("Nombre: %s\n", p->nombre);
    printf("Edad: %d\n", p->edad);
}