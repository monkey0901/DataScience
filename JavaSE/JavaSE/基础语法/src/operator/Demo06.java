package operator;

public class Demo06 {
    public static void main(String[] args) {
        /*
        位运算符：&  |   ^   ~
        A = 0000 1101
        B = 0000 1001
        -----------------------------------
        A & B : 0000 1001
        A | B : 0000 1101
        A ^ B : 0000 0100    -- 一样的为0，不一样为1
        ~B    : 1111 0110
         */

        /*
        效率极高！！！
        效率极高！！！
        效率极高！！！
        >>   和   <<
        右移，左移
        例：2<<3：16  向左移三位
        0000 0010  --》  0001 0000
         */
        System.out.println(2<<3);
        System.out.println(3<<2);
    }
}
