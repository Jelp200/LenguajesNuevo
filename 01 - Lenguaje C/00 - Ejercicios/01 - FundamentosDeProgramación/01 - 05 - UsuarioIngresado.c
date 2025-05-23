/*
** #########################################################################################
**  Archivo         :   01 - 05 - UsuarioIngresado.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Realizar un programa que visualize la siguiente
**                      informacion en consola.
**                          Usuario : [Usuario ingresado]
**                          Edad: [Edad ingresada]
**                          Escuela: [Escuela ingresada]
**                          Institucion: [Institucion ingresada]
** #########################################################################################
*/
// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// PROTOTIPO(S) DE FUNCION(ES)
void clear();
void fin();

// VARIABLES GLOBALES
signed char usr[30],
            edad[3],
            esc[80],
            inst[80];

// FUNCION PRINCIPAL
int main(){
    printf("\tDe el usuario: "); gets(usr);
    printf("\tDe la edad: "); gets(edad);
    printf("\tDe la escuela: "); gets(esc);
    printf("\tDe la institucion: "); gets(inst);

    clear();

    printf("\n\tUsuario: %s", usr);
    printf("\n\tEdad: %s", edad);
    printf("\n\tEscuela: %s", esc);
    printf("\n\tInstitucion: %s", inst);

    fin();

    return 0;
}

// FUNCIONES
void clear(){
    system("cls || clear");
}

void fin(){
    puts("\n\n\tFin del programa...");
    getchar();
}