package com.cht.scanner;

import java.util.Scanner;

public class Demo02 {
    public static void main(String[] args) {
        // 测试nextline()
        Scanner scanner = new Scanner(System.in);
        if(scanner.hasNextLine()){
            System.out.println("请输入数据：");
            String str = scanner.nextLine();
            System.out.println(str);

        }


        scanner.close();
    }
}
