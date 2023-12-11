#include<stdio.h>
#include<math.h>
#include <stdbool.h>
#include<stdlib.h>
int main() {
    // 3.1.Calculate the sum of an integer's digits.
    // int n;
    // scanf("%d", &n);
    // int sum = 0;
    // while (n > 0) {
    //     sum += n % 10;
    //     n = n / 10;
    // }
    // printf("Sum of integer is %d", sum);

    // 3.2.Print how many even and odd digits an integer number has.
    // int n;
    // scanf("%d", &n);
    // int even = 0, odd = 0;
    // while (n > 0) {
    //     int i = n % 10;
    //     i % 2 == 0 ? even++ : odd++;
    //     n = n / 10;
    // }
    // printf("Even is %d, Odd is %d", even, odd);

    // 3.3.Write the real numbers from 0 to 1 in increments of 0.1.
    // for (float i = 0.0; i <= 1.0; i += 0.1) {
    //     printf("%.1f\n", i);
    // }

    // 3.4.Draw an empty chessboard.Mark dark fields with[], light fields and two spaces.Use divisibility by two.
    // for (int i = 1; i <= 8; i++) {
    //     for (int j = 1; j <= 8; j++) {
    //         if (i % 2 != 0) {
    //             if (j % 2 != 0) {
    //                 printf("%s", "[]");
    //             }
    //             else {
    //                 printf("%s", "  ");
    //             }
    //         }
    //         else {
    //             if (j % 2 != 0) {
    //                 printf("%s", "  ");
    //             }
    //             else {
    //                 printf("%s", "[]");
    //             }
    //         }
    //     }
    //     printf("\n");
    // }

    // 3.5.Determine whether a given number is prime.Write the primes up to 1000.
    // for (int i = 2; i <= 1000; i++) {
    //     bool check = true;
    //     int condition = sqrt(i);
    //     for (int j = 2; j <= condition; j++) {
    //         if (i % j == 0) {
    //             check = false;
    //         }
    //     }
    //     if (check)
    //         printf("%d is prime number\n", i);
    // }
}