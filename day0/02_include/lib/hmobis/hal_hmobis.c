#include <stdio.h>
#include "hal_hmobis.h"

void on_blue_led() {
    drive_gpio(14, 1);
}

void off_blue_led() {
    drive_gpio(14, 0);
}

void set_motor(int rpm) {
    set_pwm(10, rpm);
}