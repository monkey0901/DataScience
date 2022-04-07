# SQL基础教程

## 4.  增删改查

### 4.1  数据的插入

#### 什么是INSERT

#### INSERT语句的基本语法

```sql
INSERT INTO <表名> (列1, 列2, 列3, ……) VALUES (值1, 值2, 值3, ……);
```

插入多行

```sql
INSERT INTO ProductIns VALUES ('0002', '打孔器', 
'办公用品', 500, 320, '2009-09-11'),
('0003', '运动T恤', '衣服', 4000, 2800, NULL),
('0004', '菜刀', '厨房用具', 3000, 2800, '2009-09-20');
```



#### 列清单的省略

对表进行全列INSERT 时，可以省略表名后的列清单。

#### 插入NULL

INSERT 语句中想给某一列赋予NULL 值时，可以直接在VALUES子句的值清单中写入NULL。

```sql
INSERT INTO ProductIns (product_id, product_name, product_type, sale_price, purchase_price, regist_date) VALUES ('0006', '叉子', 
'厨房用具', 500, NULL, '2009-09-20');
```



#### 插入默认值

在创建表时，设置default

```sql
CREATE TABLE ProductIns
(product_id CHAR(4) NOT NULL,
（略）
sale_price INTEGER DEFAULT 0, -- 销售单价的默认值设定为0;
（略）
PRIMARY KEY (product_id));
```



#### 从其他表中复制数据

```sql
INSERT INTO ProductCopy (product_id, product_name, product_type, 
sale_price, purchase_price, regist_date)
SELECT product_id, product_name, product_type, sale_price, 
purchase_price, regist_date
FROM Product;
```



### 4.2  数据的删除（DELETE语句的使用方法）

#### DROP TABLE语句和DELETE语句

① DROP TABLE 语句可以将表完全删除
② DELETE 语句会留下表（容器），而删除表中的全部数据

#### DELETE语句的基本语法

```sql
DELETE FROM <表名>;
```

不能少了from，也不能多了*。

#### 指定删除对象的DELETE语句（搜索型DELETE）

想要删除部分数据行时，可以像SELECT 语句那样使用WHERE子句指定删除条件。这种指定了删除对象的DELETE 语句称为搜索型DELETE。

```sql
DELETE FROM <表名>
WHERE <条件>;
```



### 4.3  数据的更新（UPDATE语句的使用方法）

#### UPDATE语句的基本语法

```sql
UPDATE <表名>
SET <列名> = <表达式>;
```



#### 指定条件的UPDATE语句（搜索型UPDATE）

```sql
UPDATE <表名>
SET <列名> = <表达式>
WHERE <条件>;
```



#### 使用NULL进行更新

#### 多列更新

### 4.4  事务

#### 什么是事务

#### 创建事务

#### ACID特性