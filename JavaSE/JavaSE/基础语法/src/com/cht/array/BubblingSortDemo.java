package com.cht.array;

import java.util.Arrays;

public class BubblingSortDemo {
    // 冒泡排序
    public static void main(String[] args) {
        int[] arrays = {34,11,53,85,96,21,522,7433,2,632,1124,634,32222,12};

        // 开始排序
        for (int i = arrays.length - 1; i >= 0; i--) {
            for (int j = 0; j < i; j++) {
                if (arrays[j] > arrays[j+1]){
                    int temp = arrays[j];
                    arrays[j] = arrays[j+1];
                    arrays[j+1] = temp;
                }
            }
        }

        // 输出
        System.out.println(Arrays.toString(arrays));
    }
}
