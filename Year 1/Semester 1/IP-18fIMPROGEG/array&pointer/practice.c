#include<stdio.h>
int main() {

    //what is the difference between these two ?
    int* pointer;
    int variable;

    pointer = 0;
    variable = 0;

    // printf("%p,%d\n", pointer, variable);

    // what will be printed out ?
    pointer = &variable;
    // printf("%p,%i\n", pointer, variable);

    *pointer = 10;
    // printf("%p,%i\n", pointer, variable);

    //now what does this mean and how can we use it ?
    int*** ppp = 0;
    int** pp = 0;
    int* p = 0;
    int integer;

    printf("%p,%p,%p,%i\n", ppp, pp, p, integer);
    p = &integer;
    printf("%p,%p,%p,%i\n", ppp, pp, p, integer);
    pp = &p;
    printf("%p,%p,%p,%i\n", ppp, pp, p, integer);
    ppp = &pp;
    printf("%p,%p,%p,%i\n", ppp, pp, p, integer);
    ***ppp = 10;
    printf("%p,%p,%p,%i\n", ppp, pp, p, integer);

}