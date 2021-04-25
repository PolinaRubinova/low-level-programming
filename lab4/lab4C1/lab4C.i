# 1 "lab4C.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lab4C.c"
# 1 "lab4C.h" 1


void lab4C(int array[], int n);
# 2 "lab4C.c" 2

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
