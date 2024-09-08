/*
** #########################################################################################
**  Archivo         : 01 - 31 - CntaRegresiva.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler (Linux)
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**              Realizar un programa que implemente la recursividad en funciones y así este
**              pueda realizar una cuenta regresiva.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>
#include <stdlib.h>

// VARIABLES GLOBALES
int n;

// PROTOTIPO(S) DE FUNCION(ES)
void cuentaRegresiva(int n);                    // Declaramos una funcion de tipo void con parametros para poder pasar

// FUNCION PRINCIPAL
int main(){
    int numero;

    // Solicitar al usuario el número desde el cual empezar la cuenta regresiva
    printf("Ingrese un número para iniciar la cuenta regresiva: ");
    scanf("%d", &numero);

    // Llamada a la función recursiva
    cuentaRegresiva(numero);

    return 0;
}

// FUNCION(ES)
void cuentaRegresiva(int n) {
    if (n <= 0) {
        // Caso base: cuando n llega a 0, se detiene la recursión
        printf("¡Despegue!\n");
    } else {
        // Caso recursivo: imprimir el número actual y llamar a la función con n-1
        printf("%d\n", n);
        cuentaRegresiva(n - 1);
    }
}