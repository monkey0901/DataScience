package com.cht.scanner;

import java.util.Scanner;

public class Demo01 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        // 测试next()
        // next遇到空格即结束
        System.out.println("请输入数据：");
        String str = scanner.next();
        System.out.println(str);

        scanner.close();
    }
}
