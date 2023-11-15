/*
discuss together:
7.2.1. Declare and define a variable outside the main() function! Change its value and write it out!
7.2.2. Create a function, declare and define a variable in it! Can you access the variable outside the function?
7.2.3. Write an if statement in the function written in the previous task after the variable definition! Check whether you reach the variable in the condition of if and in the true block, and optionally in the branch of else and else if!
7.2.4. Declare and define a
7.2.4. Declare and define a variable in any branch of an if statement, or in the body of an arbitrary loop! Check whether you can reach the variable outside the block!
7.2.5. Create nested scopes (blocks between {} pairs), introduce a variable in each! Check which variables you reach from which scope. When is it worth using scopes? What is the stack and how is it connected to scope management?
*/

// *7.2.8. Create a function, declare and define a static variable in it. Increase the value of the variable and print it out! Call the function in main() several times. What happens?
// *7.2.9. Write a swap() function that exchanges the values of two int variables!
// *7.2.10. Write a function that expects two int pointers as parameters and returns the pointer pointing to the greater value.
// *7.2.11. Declare and define a variable in the core of a loop, then embed a second loop and check whether you can r
// *7.2.11. Declare and define a variable in the core of a loop, then embed a second loop and check whether you can reach the variable declared in the outer loop!
// *7.2.12. Use a static variable to create a factorial function that counts the number of times it was called with parameters
#include "stdio.h"

// int global = 10;
// int myfunc()
// {
//     int var = 0;
//     var > 0 ? printf("it's quite funny") : printf("%i", var);
//     return var;
// }

void swap(int *a, int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

int funcWithStatic()
{
    static int stat = 0;
    stat = stat + 1;
    return stat;
}

int *greather(int *a, int *b)
{
    if (*a > *b)
        return a;
    else
        return b;
}

int factorial(int a)
{
    static int cnt = 0;
    cnt++;
    printf("Factorial function has been called %i times so far\n", cnt);
    // return cnt;
    static int stat = 1;
    stat = stat * a;
    return stat;
}

int main()
{
    // for (int i = 0; i < 10; i++)
    // {
    //     printf("%i\n", funcWithStatic());
    // }
    // int funcValue = myfunc();
    // printf("%i\n", funcValue);
    //     int i = 0;

    // int x = 12;
    // int y = 8;
    // printf("%i %i\n", x, y);
    // swap(&x, &y);
    // printf("%i %i", x, y);

    // *7.2.10. Write a function that expects two int pointers as parameters and returns the pointer pointing to the greater value.
    // int x = 10, y = 100;
    // printf("The greather of the two is: %i\n", *greather(&x, &y));

    // *7.2.12. Use a static variable to create a factorial function that counts the number of times it was called with parameters
    for (int i = 1; i <= 5; i++)
    {
        printf("%i\n", factorial(i));
    }
    return 0;
}
