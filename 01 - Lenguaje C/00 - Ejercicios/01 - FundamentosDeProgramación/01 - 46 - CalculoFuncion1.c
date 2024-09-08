/*
** #########################################################################################
**  Archivo         :   01 - 46 - CalculoFuncion1.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Realizar un programa que pida por teclado dos números para poder
**                      calcular la siguiente función:
**                                      f(x) = sqrt(x^2 + y^2) / 8
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>
#include <math.h>

// VARIABLES GLOBALES
float x = 0, y = 0;
float fx = 0;

// FUNCION PRINCIPAL
int main(){
    //* Ingreso de x & y
    puts("Calculo para la funcion f(x) = sqrt(x^2 + y^2) / 8");
    printf("\n\tIngrese el valor de x: "); scanf("%f", &x);
    printf("\tIngrese el valor de y: "); scanf("%f", &y);

    //* Calculo de la función
    fx = sqrt(pow(x, 2) + pow(y, 2)) / 8;

    //* Visualización de resultado
    printf("\n\tEl valor de la funcion es: %.5f", fx);
    return 0;
}