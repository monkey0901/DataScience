package com.cht.method;

public class OverloadDemo {
    public static void main(String[] args) {
        // 方法重载练习
        int a = add(2,3,4);
        int b = add(12,3);
        System.out.println(a + "\t" + b);
    }

    public static int add(int a, int b){
        return a+b;
    }

    public static int add(int a, int b, int c){
        return a+b+c;
    }
}
