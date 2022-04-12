package com.cht.method;

import java.util.Scanner;

public class FactorialDemo {
    // 递归实现阶乘
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("请输入想要求解的阶乘：");
        if (scanner.hasNextInt()){
            int i = scanner.nextInt();
            int result = factorial(i);
            System.out.println(i + "的阶乘是：" + result);
        }else {
            System.out.println("你输入的不是整数！");
        }

        scanner.close();

    }

    public static int factorial(int i){
        if (i<=0){
            return 1;
        }else {
            return i * factorial(i-1);
        }

    }

}
