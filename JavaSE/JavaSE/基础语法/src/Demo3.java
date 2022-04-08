import com.sun.org.apache.xpath.internal.objects.XString;

public class Demo3 {
    public static void main(String[] args) {
        // 整数拓展：    进制      二进制0b   十进制     八进制0    十六进制0x
        int i = 10;
        int i2 = 010;   // 八进制
        int i3 = 0b10;   // 二进制
        int i4 = 0xF;  // 十六进制     0-9 A-F(10-15)

        System.out.println(i);
        System.out.println(i2);
        System.out.println(i3);
        System.out.println(i4);
        System.out.println("===================================");
        //=====================================================================
        //浮点数拓展：    银行业务怎么表示？钱
        // BigDecimal   数学工具类
        //=====================================================================

        //float:    有限  离舍      舍入误差    大约  接近但不等于
        //double
        // 最好避免完全使用浮点数进行比较
        // 最好避免完全使用浮点数进行比较
        // 最好避免完全使用浮点数进行比较
        float f = 0.1F;
        double d = 0.1;
        System.out.println(f==d);   // false

        float f1 = 82607878626157671992f;   // 超过了float类型存储的长度
        float f2 = f1 + 1;
        System.out.println(f1==f2);     //true

        //=====================================================================
        // 字符拓展？
        //=====================================================================

        System.out.println("===================================");

        char c1 = 'A';
        char c2 = '中';

        System.out.println(c1);
        System.out.println((int)c1);

        System.out.println(c2);
        System.out.println((int)c2);

        // 所有字符本质还是数字
        // 编码 Unicode

        // 转义字符

        // 内存和对象
        System.out.println("===================================");

        String str = "hello";
        String str2 = "hello";
        System.out.println(str==str2);

        String str3 = new String( "hello");
        String str4 = new String( "hello");
        System.out.println(str3==str4);     //内存地址不同



        //布尔值拓展
        boolean flag = true;
        if (flag==true){

        }
        if (flag){      // 一般使用这种写法

        }









    }
}
