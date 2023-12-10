/*
9.2.1. Implement a stack data structure in which boxes can be put. A box is implemented with a struct that contains an integer data and a pointer to the next box.
9.2.2. Create a pointer named top to a box in the main() function. Also create an initializer function that sets this pointer to NULL.
9.2.3. Create an empty() function which returns true if the stack is empty.
9.2.4. Create a peek() function which returns the integer value in the top element of the stack.
9.2.5. Create a push() function which inserts a new element to the top of the stack.
9.2.6. Create a pop() element which removes the topmost element of the stack.
*/
#include <stdlib.h>
#include <stdio.h>
#include <stddef.h>
struct box {
    int val;
    struct box* next;
};
struct box* create_stack() {
    return NULL;
}

int empty(struct box* top) {
    return (top == NULL);
}

int peek(struct box* top) {
    if (empty(top)) {
        return -1;
    }
    else {
        return top->val;
    }

}


void push(struct box** top, int i) {
    struct box* old_top = (*top);
    struct box* new_top = malloc(sizeof(struct box));
    new_top->val = i;
    new_top->next = old_top;
    (*top) = new_top;
}

void pop(struct box** top) {
    if (empty(*top)) {

    }
    else {
        struct box* old_top = (*top);
        (*top) = old_top->next;
        free(old_top);
    }
}

int main() {
    struct box* top = create_stack();

    printf("%i ", peek(top));
    push(&top, 5);
    printf("%i ", peek(top));
    push(&top, 10);
    printf("%i ", peek(top));
    push(&top, 7);

    printf("%i\n", peek(top));
    pop(&top);
    printf("%i ", peek(top));
    pop(&top);
    printf("%i ", peek(top));
    pop(&top);
    printf("%i ", peek(top));

    return 0;
}

//gcc struct_start.c -Wall