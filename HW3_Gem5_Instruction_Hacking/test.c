#include <stdio.h>
float subtract(float in1, float in2)
{
    float ret = 0.0;
    asm ("fsubr %2, %0" : "=&t" (ret) : "%0" (in1), "u" (in2));
    return ret;
}
int main() {
    float a = 3.5;
    float b = 1.7;
    float c = subtract(a, b);
    printf("%f\n", c);
    return 0;
}