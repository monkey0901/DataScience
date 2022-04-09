package operator;

public class Demo05 {
    public static void main(String[] args) {
        // 逻辑运算
        // 与（and）    或（or）   非（取反）
        boolean a = true;
        boolean b = false;

        System.out.println("a && b : " + (a && b));
        System.out.println("a || b : " + (a || b));
        System.out.println("!(a && b) : " + !(a && b));

        System.out.println("============================");
        // 短路运算
        int c = 5;
        System.out.println((c<4 && (c++<4)));   // c++ 并没有被执行
        System.out.println(c);
    }
}
