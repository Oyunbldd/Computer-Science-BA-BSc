#include<stdio.h>
int main() {

    // int i = 42;
    // i gedeg huvisagch memory deer neg address deer 2,4 byte iin utga ezelj bairshij baigaa
    // int* p = &i;

    // * , & temdegtuudiiin utga in yu ve ? 
    // bid ug tushai 2 temdegtiig ashilsnaar memory luu shuud handah tuun der uildel hiih bolomjtoi.

    // scanf("%d",&n); bid ygad huvisagchiin utgiig garaas unshij avhad ug temdegtiig ashigldag ve ?
    // Uchir in hereglechees unshij bui datanii utga memory deer ymar bairshilj bairshij baigaa in heregtei tul .


    // printf("%d,%d\n", i, *p); // -> 42, 42
    // p huvisagchin engiin uydee address hadgalsan baigaa harin * temdegtiig ashiglsnaar haygt hadgalsan utgiig medeh bolomjtoi.

    // *p = 5;
    // printf("%d,%d\n", i, *p);  // -> 5,5
    // 5 , 5 garsan shaltgaanii huvid ug hoyr utga neg memory deerh haygaas utgaa avj baigaa
    // bid ug memory deer hadgalsan utgiig uurchilsun tul 5,5 garav.

    // int j;
    // p = &j; // -> p giin memory address iig solij bui uildel
    // *p = 10;  // memory deer bairshisan utgiiig urchuulj bui uildel
    // printf("%d", j);

    // p = NULL;  // -> points nowhere

    // int arr[] = { 1,2,3 };
    // arr = { 1,2,4 };

    // int* ptr = arr;
    // int* q = &arr[0];

    // arr[1] = 5;
    // ptr[1] = 5;

    // int t[] = { 2,3,2 };
    // ptr = t;
    // arr = t;
    // printf("%d, %d", arr[1], ptr[0]);

    // printf("%d, %d\n", sizeof(arr), sizeof(ptr));

    int t[] = { 6,2,8,7,3 };
    int* p = NULL;

    for (int i = 0; i < 5; i++)
        if (t[i] % 2 == 1)
            p = &t[i];
    if (p)
        printf("First odd number: %d\n", *p);
    else
        printf("No odd number\n");
}