package com.cht.operator;

public class Demo01 {
    // 运算符的简单操作
    public static void main(String[] args) {
        int a = 10;
        int b = 20;

        System.out.println(a+b);
        System.out.println(a-b);
        System.out.println(a*b);
        System.out.println(a/b);    // int类型相除，还是int，向下取整
        System.out.println(a/(double)b);


    }
}
