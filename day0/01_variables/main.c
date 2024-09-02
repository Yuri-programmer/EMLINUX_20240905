#include  <stdio.h>
#include "hyundai.h"

extern int g1;
// extern int s_rpm; 정적전역변수에는 접근 불가능함.

int main() {
    g1 = 0;
    // s_rpm = 12; 정적전역변수에는 접근 불가능함.
    set_s_rpm(10);  // 정적전역변수에 접근하게 해주는 함수를 이용

    foo(2);

    int a = foo(2);
    printf("Hello world %d, allocated %d bytes\n", a, sizeof(a));

    unsigned char b = 0x5A;
    printf("Hello world %d, allocated %d bytes\n", b, sizeof(b));
    printf("Hello world %2X, allocated %d bytes\n", b, sizeof(b));

    g1 = 100;
    a = foo(12);

    int gl = 12;
    g1 = 56; // 원래 의도는 gl=56하려했으나 ..(전역변수의 위험성.)

    return 0;
}

