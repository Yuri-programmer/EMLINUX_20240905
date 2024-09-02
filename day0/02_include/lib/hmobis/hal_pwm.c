#include <stdio.h>
#include "hal_pwm.h"

void set_pwm(int ch, int duty) {
    printf("hmobis::hal_gpio::drive_gpio(%d, %d)\n", ch, duty);
}
