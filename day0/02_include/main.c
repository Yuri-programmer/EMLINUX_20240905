#include <stdio.h>
#include "hyundai.h"
#include <hmobis/hal_hmobis.h>

#define K1 124

int main() {
    int y = foo(100);
    y = incr(y);

    printf("hello world %d\n", K1+y);

    on_blue_led();

    return 0;
}


