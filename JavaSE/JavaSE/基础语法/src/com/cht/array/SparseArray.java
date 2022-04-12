package com.cht.array;

public class SparseArray {
    // 稀疏数组练习
    public static void main(String[] args) {
        // 1.构造稀疏数组
        int[][] array = new int[11][11];
        array[1][2] = 1;
        array[2][3] = 2;

        // 2.打印稀疏数组
        printArray(array);
        System.out.println("============================");

        // 3.稀疏数组转为二维数组
        int[][] array2 = sparseToChess(array);
        printArray(array2);
        System.out.println("============================");

        // 4.将二维数组转化为稀疏数组
        int[][] array3 = chessToSparse(array2);
        printArray(array3);
    }

    // 打印数组
    public static void printArray(int[][] array){
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array[0].length; j++) {
                System.out.print(array[i][j] + "\t");
            }
            System.out.println();
        }
    }

    // 将稀疏数组转化为二维数组
    public static int[][] sparseToChess(int[][] array){
        int count = 0;

        // 记录有效值的个数
        for (int i = 0; i < 11; i++) {
            for (int j = 0; j < 11; j++) {
                if (array[i][j] != 0){
                    count++;
                }
            }
        }
        int[][] array2 = new int[count+1][3];
        // 第一行赋值
        array2[0][0] = array.length;
        array2[0][1] = array[0].length;
        array2[0][2] = count;
        // 其他行赋值
        int temp = 0;   // 记录在赋值第几个数
        for (int i = 0; i < 11; i++) {
            for (int j = 0; j < 11; j++) {
                if (array[i][j] != 0){
                    temp++;
                    array2[temp][0] = i;
                    array2[temp][1] = j;
                    array2[temp][2] = array[i][j];
                }
            }
        }
        return array2;
    }

    // 将二维数组转化为稀疏数组
    public static int[][] chessToSparse(int[][] array){
        int[][] array3 = new int[array[0][0]][array[0][1]];

        for (int i = 1; i < array.length; i++) {
            array3[array[i][0]][array[i][1]] = array[i][2];
        }
        return array3;
    }
}
