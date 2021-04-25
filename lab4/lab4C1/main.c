#include <stdio.h>
#include "lab4C.h"

int main() {
    int array[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
    int n = 10;
    lab4C(array, n);
    printf("%d", array[0]);
    return 0;
}