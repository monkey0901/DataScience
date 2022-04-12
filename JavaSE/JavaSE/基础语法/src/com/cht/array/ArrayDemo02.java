package com.cht.array;

import java.lang.reflect.Array;
import java.util.Arrays;

public class ArrayDemo02 {


    public static void main(String[] args) {
        int[] array = new int[10];
        for (int i = 0; i < 10; i++) {
            array[i] = i + 1;
        }
        System.out.println(Arrays.toString(array));
    }
}
