package com.cht.method;

import java.util.Scanner;

public class CalculatorDemo {
    // 实现计算器的加减乘除操作
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("请输入第一个数：");
        double num1 = scanner.nextDouble();

        System.out.println("请输入第二个数：");
        double num2 = scanner.nextDouble();
        System.out.println("请选择计算方式：");
        String c = scanner.next();
        switch (c){
            case "加":
                double add = add(num1, num2);
                System.out.println(add);
                break;
            case "减":
                double minus = minus(num1, num2);
                System.out.println(minus);
                break;
            case "乘":
                double multiply = multiply(num1, num2);
                System.out.println(multiply);
                break;
            case "除":
                double divide = divide(num1, num2);
                System.out.println(divide);
                break;

        }

        scanner.close();
    }

    // 加
    public static double add(double... numbs){
        double sum = 0;
        for(double num:numbs){
            sum += num;
        }
        return sum;
    }

    // 减
    public static double minus(double... numbs){
        double sum = numbs[0];
        for (int i = 1; i < numbs.length; i++) {
            sum -= numbs[i];
        }
        return sum;
    }

    //乘
    public static double multiply(double... numbs){
        double sum = 1;
        for(double num : numbs){
            sum *= num;
        }
        return sum;
    }
    //除
    public static double divide(double... numbs){
        double sum = numbs[0];
        for (int i = 1; i < numbs.length; i++) {
            sum /= numbs[i];
        }
        return sum;
    }

}
