package com.cht.base;

public class Demo05 {
    // 强制类型转换
    public static void main(String[] args) {
        /*
        注意点：
        1.  不能对布尔值进行转换
        2.  不能把对象类型转为不相干的类型
        3.  在把高容量的转换为低容量的时，要用强制转换
        4.  转换的时候可能存在溢出问题，精度问题
         */
        // 自动转换： 高 --> 低
        byte b1 = 23;
        int b2 = b1;
        System.out.println(b1);
        System.out.println(b2);

        // 强制转换： 低 --> 高
        System.out.println("=============================");
        double d1 = 34.4;
        int d2 = (int)d1;
        System.out.println(d2);

        // 内存溢出问题
        System.out.println("=============================");
        int i = 128;
        byte b3 = (byte)i;
        System.out.println(b3);     // 因为内存溢出，输出的数无法控制

        System.out.println("=============================");
        // JDK7新特性：数字可以用下划线分割
        int money = 1000_000_000;
        int years = 20;
        long total = money * years;
        long total2 = money * ((long)years);

        System.out.println(total);
        System.out.println(total2);

    }
}
