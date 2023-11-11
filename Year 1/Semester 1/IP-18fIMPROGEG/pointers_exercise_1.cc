/*
6.4. Write a function that returns the sum of the elements in an array received as a parameter. The array is passed using a pointer to the first element and an integer variable containing a length. Let's write the function without using the operator[], using pointer arithmetic.
6.5. Redesign the previous function so that we get the array using a pointer to the first element and a pointer to the last element.
6.6. Redesign the previous program to calculate an average. How can we calculate the size of the array from the pair of pointers?
*/

#include "stdio.h"

int square(int x)
{
    printf("function starts\n");
    int squaredInt = x * x;
    printf("function ends\n");
    return squaredInt;
}

int sum(int *array, int length)
{
    int sum = 0;
    for (int i = 0; i <= length; i++)
        // sum += array[i];
        sum = sum + *(array + i);

    return sum;
}

int sum2(int *start, int *end)
{
    int sum = 0;
    int length = end - start;
    for (int i = 0; i < length; i++)
        sum = sum + *(start + i);

    return sum;
}

float avg(int *start, int *end)
{
    float avg = (float)sum2(start, end) / (end - start);
    return avg;
}

int main()
{
    // for (int i = 8; i < 12; i++)
    // {
    //     printf("calling the function\n");
    //     int squared = square(i);
    //     printf("called the function\n");
    //     printf("The calculated integer is %i\n", squared);
    // }

    int a[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int *p = a;
    // printf("The calculated sum is %i\n", sum(p, 10));

    int *first = a;
    int *last = a + 9;
    // printf("The calculated sum is %i\n", sum2(first, last));
    // printf("The calculated average is %f\n", avg(first, last));

    return 0;
}