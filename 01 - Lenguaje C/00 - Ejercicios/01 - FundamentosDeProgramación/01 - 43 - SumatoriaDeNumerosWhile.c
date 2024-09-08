/*
** #########################################################################################
**  Archivo         :   01 - 43 - SumaDeNumerosWhile.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Realizar un programa que pida por teclado un número entero positivo
**                      con valor mínimo de 5 y máximo de 250, en caso de ingresar un dato
**                      erroneo el programa debera pedir el número hasta que sea correcto
**                      y entregar una tabla de sumatorias desde 1 hasta el valor 'n'.
**
**                      Utilizar la estructura de control while para realizar la suma.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// FUNCION PRINCIPAL
int main() {
    int n, i, suma;

    // Solicitar al usuario un número entero positivo entre 5 y 250
    do{
        printf("Ingrese un numero entero positivo (minimo 5, maximo 250): ");
        scanf("%d", &n);

        if (n < 5 || n > 250) {
            printf("Numero fuera del rango permitido. Intentelo de nuevo.\n");
        }
    }while (n < 5 || n > 250);

    // Imprimir la tabla de sumatorias
    printf("\nTabla de sumatorias desde 1 hasta %d\n", n);
    printf("Numero\tSumatoria\n");
    printf("------------------\n");

    for(i = 1; i <= n; i++){
        suma = 0;
        int j = 1;
        while(j <= i){
            suma += j;
            j++;
        }
        printf("%d\t%d\n", i, suma);
    }
    return 0;
}
