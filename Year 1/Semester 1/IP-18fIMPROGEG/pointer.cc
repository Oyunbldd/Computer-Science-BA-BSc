#include "stdio.h"

int main()
{

    // what is the difference between these two?
    // int *pointer;
    // int variable;

    int num = 42;
    int *p = &num;
    // printf("%i", *p);
    printf("%p", p);
    // pointer = 0;
    // variable = 0;
    // // printf("%i,%i,%i\n", pointer, *pointer, variable);
    // printf("%i,%i\n", pointer, variable);

    // // what will be printed out?
    // pointer = &variable;
    // printf("%i,%i\n", pointer, variable);

    // *pointer = 10;
    // printf("%i,%i\n", pointer, variable);

    // now what does this mean and how can we use it?
    // int ***ppp = 0;
    // int **pp = 0;
    // int *p = 0;
    // int integer;

    // printf("%i,%i,%i,%i\n", ppp, pp, p, integer);
    // p = &integer;
    // printf("%i,%i,%i,%i\n", ppp, pp, p, integer);
    // pp = &p;
    // printf("%i,%i,%i,%i\n", ppp, pp, p, integer);
    // ppp = &pp;
    // printf("%i,%i,%i,%i\n", ppp, pp, p, integer);
    // ***ppp = 10;
    // printf("%i,%i,%i,%i\n", ppp, pp, p, integer);

    // int arr[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    // int twoDimArr[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
    // int *q = arr;
    // int *r = twoDimArr[0];

    // for (int i = 0; i < 12; i++)
    // {
    //     printf("%i,%i\n", q, *q);
    //     q++;
    // }

    // for (int i = 0; i < 9; i++)
    // {
    //     printf("%i,%i\n", r, *r);
    //     r++;
    // }

    return 0;
}