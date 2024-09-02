
#include "hyundai.h"
#include <stdio.h>

int g1;  // 전역변수 global variable
         // 현재 파일 뿐만아니라, 모든 파일에 걸쳐서 이 변수가 보임

static int s_rpm; // 정적 전역변수.. 
         // 현재 파일 전체에는 보이는 전역변수이지만..
         // 현재 파일 내부로만 제한 (다른 파일에는 보이지 않도록)
         // 다른 파일에서는 s_rpm에 접근 불가능함

// 만약. 정적전역변수에 다른 사용자가 접근하도록 하고 싶으면
// 제공되는 함수를 이용해서 접근하게 할 수 있다.
void set_s_rpm(int t) {
    if(t < 12)
        s_rpm = t;  
}

//        int k = 0;  값을 유지하나.. 모든 파일에 보임
// static int k = 0;  값을 유지하지만.. 현재 파일에만 보임..
int foo(int a) {
    static int k = 0; 
    // 정적지역변수: 값을 유지하지만.. 현재 함수안에만 보임..
    // 개념의 변화... (전역변수->정적전역변수->정적지역변수)

    printf("---foo() -------------------------\n");
    printf("g1 is %d\n", g1);
    printf("s_rpm is %d\n", s_rpm);

    k++;
    printf("k is %d\n", k);

    if(k==1)
        printf("first button pressed\n");
    else if(k==2)
        printf("second button pressed\n");
    else if(k==3)
        printf("third button pressed\n");

    printf("----------------------------------\n");
    return k;
}
