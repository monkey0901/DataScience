package com.cht.base;

public class Demo07 {
    // 变量的作用域
    // 属性：变量

    // 类变量：static
    static double salary = 2500;

    // 常量：final
    // 修饰符不分前后
    // final static double PI = 3.14
    static final double PI = 3.14;

    // 实例变量：从属于对象，不需要初始化
    // 其中，string： null， int：0，
    // 默认值都为 0
    String name = "CHT";
    int age;
    public static void main(String[] args) {
        // 局部变量：必须声明变量类型，并初始化
        int i = 10;
        System.out.println(i);

        // 实例变量的使用
        Demo07 demo07 = new Demo07();
        System.out.println(demo07.age);
        System.out.println(demo07.name);
        System.out.println(salary);
        System.out.println(PI);

    }
    public void add(){

    }
}
