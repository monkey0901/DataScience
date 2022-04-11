package com.cht.scanner;

import java.util.Scanner;

public class Demo05 {
    public static void main(String[] args) {
        // 输入多个数，并求其总和以及平均值，通过输入非数字来结束程序
        Scanner scanner = new Scanner(System.in);

        // 定义和和输入的数字个数
        double sum = 0;
        int count = 0;

        while (scanner.hasNextDouble()){
            double x = scanner.nextDouble();
            sum += x;
            count++;

        }

        System.out.println(count + "个数的和为：" + sum);
        System.out.println(count + "个数的平均值为：" + sum/count);

        scanner.close();
    }
}
