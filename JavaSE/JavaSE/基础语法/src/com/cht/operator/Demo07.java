package com.cht.operator;

public class Demo07 {
    // 赋值运算符拓展
    public static void main(String[] args) {
        int a = 30;
        int b = 10;

        a += b;     // a = a + b
        a -= b;     // a = a - b
        System.out.println(a);
        System.out.println("===========================");

        // 字符串连接
        System.out.println(""+a+b);
        System.out.println(a+b+"");
        System.out.println("===========================");

        // 三元运算符
        // X ? Y : Z    如果X==true，则结果为Y，否则结果为Z
        int score = 80;
        String str = score>60 ? "及格" : "不及格";
        System.out.println(str);
    }
}
