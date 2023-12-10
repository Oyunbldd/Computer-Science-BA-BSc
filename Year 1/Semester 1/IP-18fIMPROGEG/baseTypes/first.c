#include<stdio.h> 
// stdio -> standart input,  output short form

int main() {
    printf("Your name,please:\n");
    char name[32];

    // Reading input
    scanf("%s", name);


    //Printing output
    printf("%s", name);

}