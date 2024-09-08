#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_STUDENTS 100
#define FILENAME "students.db"

// Estructura para almacenar la información de un estudiante
struct Student {
    int id;
    char name[50];
    float grade;
};

// Funciones prototipo
void addStudent(struct Student *students, int *count);
void showStudents(struct Student *students, int count);
struct Student* findStudentById(struct Student *students, int count, int id);
void saveToFile(struct Student *students, int count);
void loadFromFile(struct Student *students, int *count);

int main() {
    struct Student students[MAX_STUDENTS];
    int studentCount = 0;
    int choice, id;
    struct Student *foundStudent;

    // Cargar datos desde el archivo
    loadFromFile(students, &studentCount);

    do {
        printf("\n--- Base de Datos de Estudiantes ---\n");
        printf("1. Agregar Estudiante\n");
        printf("2. Mostrar Estudiantes\n");
        printf("3. Buscar Estudiante por ID\n");
        printf("4. Guardar y Salir\n");
        printf("Elija una opción: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                addStudent(students, &studentCount);
                break;
            case 2:
                showStudents(students, studentCount);
                break;
            case 3:
                printf("Ingrese el ID del estudiante: ");
                scanf("%d", &id);
                foundStudent = findStudentById(students, studentCount, id);
                if (foundStudent != NULL) {
                    printf("Estudiante encontrado:\n");
                    printf("ID: %d\nNombre: %s\nCalificación: %.2f\n", 
                            foundStudent->id, foundStudent->name, foundStudent->grade);
                } else {
                    printf("Estudiante con ID %d no encontrado.\n", id);
                }
                break;
            case 4:
                saveToFile(students, studentCount);
                printf("Datos guardados. Saliendo...\n");
                break;
            default:
                printf("Opción no válida.\n");
                break;
        }
    } while (choice != 4);

    return 0;
}

// Función para agregar un estudiante a la base de datos
void addStudent(struct Student *students, int *count) {
    if (*count >= MAX_STUDENTS) {
        printf("No se pueden agregar más estudiantes. La base de datos está llena.\n");
        return;
    }
    students[*count].id = *count + 1;
    printf("Ingrese el nombre del estudiante: ");
    scanf("%s", students[*count].name);
    printf("Ingrese la calificación del estudiante: ");
    scanf("%f", &students[*count].grade);
    (*count)++;
    printf("Estudiante agregado con éxito.\n");
}

// Función para mostrar todos los estudiantes
void showStudents(struct Student *students, int count) {
    printf("\n--- Lista de Estudiantes ---\n");
    for (int i = 0; i < count; i++) {
        printf("ID: %d\nNombre: %s\nCalificación: %.2f\n\n", 
               students[i].id, students[i].name, students[i].grade);
    }
}

// Función para buscar un estudiante por su ID
struct Student* findStudentById(struct Student *students, int count, int id) {
    for (int i = 0; i < count; i++) {
        if (students[i].id == id) {
            return &students[i];
        }
    }
    return NULL;
}

// Función para guardar la base de datos en un archivo
void saveToFile(struct Student *students, int count) {
    FILE *file = fopen(FILENAME, "wb");
    if (file == NULL) {
        printf("Error al abrir el archivo para guardar.\n");
        return;
    }
    fwrite(students, sizeof(struct Student), count, file);
    fclose(file);
}

// Función para cargar la base de datos desde un archivo
void loadFromFile(struct Student *students, int *count) {
    FILE *file = fopen(FILENAME, "rb");
    if (file == NULL) {
        printf("No se encontró un archivo de base de datos existente. Comenzando una nueva base de datos.\n");
        return;
    }
    *count = fread(students, sizeof(struct Student), MAX_STUDENTS, file);
    fclose(file);
    printf("Datos cargados desde el archivo. %d estudiantes en la base de datos.\n", *count);
}

