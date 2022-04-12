package com.cht.array;

public class ArrayDemo01 {
    // 数组练习
    public static void main(String[] args) {
        int[] nums = new int[10];
        for (int i = 0; i < 10; i++) {
            nums[i] = i + 1;
        }
        System.out.println(nums[15]);
    }
}
