#include <stdio.h>
#include <stdlib.h>

int main()
{
    /* code */
    // malloc() = A function in C that dyanamically allocates memory on the heap and returns a pointer to the allocated memory.
    //            It is defined in the <stdlib.h> header file. 
    //            The syntax for malloc() is as follows:
    //            void *malloc(size_t size);
    int num = 0;
    printf("Enter the number of grades: ");
    scanf("%d", &num);

    char *grades = malloc(num * sizeof(char));

    if(grades == NULL){
        printf("Memory allocation failed!\n");
        return 1;
    }

    for (int i = 0; i < num; i++)
    {
        printf("Enter grade %d: ", i + 1);
        scanf(" %c", &grades[i]);   // memory address where the character "input" will be stored
    }

    for (int i = 0; i < num; i++)
    {
        printf("Grade %d: %c\n", i + 1, grades[i]);
        printf("Address of grade %d: %p\n", i + 1, &grades[i]);
        printf("===============================\n");
    }

    free(grades); //returning "rented" space back to the system
    grades = NULL; //setting the pointer to NULL to avoid dangling pointer

    return 0;
}
