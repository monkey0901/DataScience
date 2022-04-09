package operator;

public class Demo02 {
    // 不同类型的数字进行运算
    public static void main(String[] args) {
        long a = 17866188302801l;
        int b = 78781;
        short c = 1298;
        byte d = 123;

        System.out.println(a+b+c+d);    // long
        System.out.println(b+c+d);      // int
        System.out.println(c+d);        // int: 无long时都为int类型
    }
}
