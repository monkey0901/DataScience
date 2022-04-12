package com.cht.method;

public class Demo04 {
    // 可变参数练习
    public static void main(String[] args) {
        // 从多个数中找出最大值
        Demo04 demo04 = new Demo04();

        double max = demo04.max(1,23,45, 2.2, 2, 36,8.4);

        System.out.println(max);
    }

    public double max(double... numbs){
        double max = 0;
        if (numbs.length == 0){
            System.out.println("没有数据传入");
            return -1;
        }else{
            for (double num : numbs) {
                if (max < num) {
                    max = num;
                }
            }
        }
        return max;

    }
}
