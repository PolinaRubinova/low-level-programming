#include "lab4C.h"

void lab4C(int array[], int n) {
    for(int i = 1; i < n; i++){
        if(array[i] != 0){
            array[0] = i + 1;
            for(int j = i; j < n; j += i + 1){
                array[j] = 0;
            }
        }
    }
}