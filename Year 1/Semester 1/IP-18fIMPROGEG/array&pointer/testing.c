

#endif 
#define TIMES 3
#include <stdio.h>

int addCopy(int x, int y) {
    x = x + y;
    return x;
}

int addRef(int* x, int* y) {
    *x = *x + *y;
    return *x;
}

int main() {
    int a = 10;
    int b = 5;
    int* ap = &a;
    int* bp = &b;

    for (int i = 0; i < TIMES; i++) {
        printf("%d ", addCopy(a, b));
        printf("%d\n", addRef(ap, bp));
    }

    return 0;
}