#include <stdio.h>

int main() {
    int a[10] = {1,2,3,4,5,6,7,8,9,10};
    int b[10] = {1,2,3,4,5,6,7,8,9,10};
    int c[10];

    for(int i = 0; i < 10; ++i)
        c[i] = a[i] + b[i];
    
    for(int i = 0; i < 10; ++i)
        printf("%d", c[i]);

    return 0;
}