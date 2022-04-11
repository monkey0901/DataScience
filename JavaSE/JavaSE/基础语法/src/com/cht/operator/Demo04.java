package com.cht.operator;

public class Demo04 {
    public static void main(String[] args) {
        // 自增： ++   自减： --
        int a = 3;
        // a++ : 先赋值给b，再自增
        int b = a++;
        // 隐藏：a = a + 1

        // ++a ：先自增，再赋值给c
        // 隐藏：a = a + 1
        int c = ++a;

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);

        // 幂运算：2^3  很多运算，我们会使用一些工具类
        double p = Math.pow(2,3);
        double s = Math.sqrt(4);
        System.out.println(p);
        System.out.println(s);
    }
}
