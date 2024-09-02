#include  <stdio.h>

void update_money1(int money) {
     money = money + 10000; // 1억 증가..
}
void update_money2(int* mp) {
     *mp = *mp + 10000; // 1억 증가..
}


int main() {

    //        addr    |   data
    //        --------+--------
    // &a0 ->  61FE1F |  0x5A  <- a0
    // &a1 ->  61FE1E |  0xBC  <- a1
    // &a2 ->  61FE1D |  0xF3  <- a2
    // &a3 ->  61FE1C |  0x76  <- a3
    //        --------+---------
    unsigned char a0 = 0x5A; // 메모리에 한바이트 할당됨.(단 어떤 주소에..)
    unsigned char a1 = 0xBC; 
    unsigned char a2 = 0xF3; 
    unsigned char a3 = 0x76; 
    printf("a0 is 0x%02X at address %p\n", a0, &a0);
    printf("a1 is 0x%02X at address %p\n", a1, &a1);
    printf("a2 is 0x%02X at address %p\n", a2, &a2);
    printf("a3 is 0x%02X at address %p\n", a3, &a3);

    // 변수는 값을 담을 수 있는 공간이다..~~
    // 그런데, 값을 제한할수 있다 --> 타입..
    // 값을 담을려면 공간이 필요하고.. 메모리에 공간을 확보하는게 변수 선언이다..
    //        a   = ....
    //  int   a   = .... 이제 a에는 정수만 담을 수 있다.
    // 타입 변수명 = 값

    // 자 그럼... 값을 값인데.. 주소값을 변수에 담아보자~~~
    //  변수 a의 주소값을 담아보자~~~
    //  그냥값이든, 주고값이든, 무언가를 담으려면 공간이 필요하다~~~ --> 변수선언 필요
    //        ap = &a;    
    //  그런데.. 모든 변수는 그 안에 들어갈 값의 종류를 구체적으로 설명해야 한다~~ --> 타입.
    //    *   ap = &a;   --> 변수 안에 들어간 값의 종류가 주소다~~~라는것을 알려줌.. by *
    //  그리고 그 주소가 가리키는 대상이 정수일 경우...
    // int*   ap = &a;
    // ~~~~  ~~~   ~~~
    // 타입   변수  값
    //
    // 사람*    전화번호1 = 01078891234;
    // 사물함*  사물함2   = 01078891234;

    int   a = 0x12345678; 
    int* ap = &a;
    printf("a's address is %p \n", &a);
    printf("a's address is %p \n", ap);

    // 자 ㅈ이제 주소를 이용하여 그 대상에 간접적으로 접근해보자~~~
    // 주소를 담은 변수 이름앞에 *를 사용~
    printf("a's value is 0x%08X \n",  a );
    printf("a's value is 0x%08X \n", *ap);


    //주소값을 담은 변수 => 포인터 변수다~~
    // 자 이에 주소를 이용하여 값을 읽고 써보자~
    //  a = 0xFFBBCCDD;
      *ap = 0xFFBBCCDD;
    printf("a's value is 0x%08X \n",  a );

    //              &a
    // 0x000000000061FE10
    //              ap
    //   3개는 다 같은 값이다.

    //                        a = 0x78563412;
    //                     *(&a)= 0x78563412;
    //                 int*  ap = &a;
    //                     *(ap)= 0x78563412;
    *((int*)0x000000000061FE10) = 0x78563412;
    printf("a's value is 0x%08X \n",  a );

    #define TMR_MODE *((int*)0x000000000061FE10) // -> header로 옮길 예정.
    //*((int*)0x000000000061FE10) = 0x00000012;
                        TMR_MODE  = 0x00000012;

    printf("TMR_MODE's value is 0x%08X \n",  TMR_MODE );


    // endian 이슈~~~
    int b = 0x12345678; // 변수 선언시, 메모리에 b가 할당됨 (배치, 어떤 주소에...)
    int c = 0xFFBBCCEE;
    printf("b's address is %p\n", &b);
    printf("c's address is %p\n", &c);
    
    // 주소를 변수에 담아보자~~ 주소를 담고있는 변수 -> 포인터변수
    // int* --> 주소이면서.. 4바이트를 가리킨다...
    int*  bp  = &b; // 0x000000000061FE0C
    printf("b's value is 0x%08X\n", *bp);

    // char* --> 주소는 주소인데 이제는 1바이트만 가리킬수 있다.
    unsigned char* bpc = (unsigned char*)&b;
    printf("b's first bytes's address is %p\n", bpc);    

    printf("mem[%016X] : 0x%02X\n", bpc+0, *(bpc+0));
    printf("mem[%p] : 0x%02X\n", bpc+1, *(bpc+1));
    printf("mem[%p] : 0x%02X\n", bpc+2, *(bpc+2));
    printf("mem[%p] : 0x%02X\n", bpc+3, *(bpc+3));

    // b의 값을 0x12345678을 0x12FF5678로 바꿔보아라
    *(bpc+2) = 0xFF;
    printf("b's value is 0x%08X\n", b);


    // call by value와 call by referece개념
    // 주소(포인터) 이용하면 빨리지고 메모리도 적게 쓰는 이유.
    int my_money = 100; // 100만원
    update_money1(my_money); // call by value
    printf("money is %d\n", my_money);

    update_money2(&my_money); // call by reference (주소)
    printf("money is %d\n", my_money);
    return 0;
}

