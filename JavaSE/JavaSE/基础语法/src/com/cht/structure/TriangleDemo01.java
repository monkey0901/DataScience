package com.cht.structure;

import java.util.Scanner;

public class TriangleDemo01 {
    // 打印三角形
    public static void main(String[] args) {
        int height = 0;
        Scanner scanner = new Scanner(System.in);
        System.out.println("请输入打印三角形的高度");
        if (scanner.hasNextInt()){
            height = scanner.nextInt();
        }

        // 开始打印三角形
        for (int i = 0; i < height; i++) {
            for (int j = height; j > i; j--) {
                System.out.print(" ");
            }
            for (int j = 0; j <= i; j++) {
                System.out.print("*");
            }
            for (int j = 0; j < i; j++) {
                System.out.print("*");
            }

            System.out.println();
        }

        scanner.close();
    }
}
