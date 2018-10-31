---
layout: post
title: hive 基础
categories: swaiter
description: hive入门
keywords: hive、table、db、join
---

在实际后台服务开发中，RPC框架具有很大的优势，其中当前dubbo已经受到大家的关注和认可，现在开始进行手动码一个简单的RPC框架。
### hive简介

```bash
hive是基于Hadoop的一个数据仓库工具，可以将结构化的数据文件映射为一张数据库表，并提供完整的sql查询功能，可以将sql语句转换为MapReduce任务进行运行。其优点是学习成本低，可以通过类SQL语句快速实现简单的MapReduce统计，不必开发专门的MapReduce应用，十分适合数据仓库的统计分析。
```

[官方地址](https://hive.apache.org/)

### Hive的基本操作
#### 1.建数据库
```hql
CREATE DATABASE IF NOT EXISTS test
COMMENT '添加对表的描述'
```

#### 2.上传文件至hdfs

```bash
# 把本地数据put到集群
$hadoop fs -put /Users/mrlevo/Desktop/project/163music/music_data  /test/music/
```
#### 3.查看

```bash

# 其中hdfs上的数据是这样的,它会location到该路径下的所有文件
$hadoop fs -ls /test/music/
-rw-r--r--   1 mac supergroup    2827582 2017-07-07 15:03 /test/music/music_data

# music_data里面的文件是这样的,这里把个人信息抹掉了
$ hadoop fs -cat /test/music/music_data | more
xxx|9|让音乐串起你我|云南省|文山壮族苗族自治州|75后|新浪微博|482|2002|326|http://music.163.com/#/user/fans?id=xx
xx|8|None|云南省|曲靖市|75后|None|0|12|4|http://music.163.com/user/fans?id=xx
xx|8|百年云烟只过眼，不为繁华易素心|贵州省|贵阳市|85后|None|1|22|1|http://music.163.com/user/fans?id=xx
```

首先项目框架如下图

![screenshot home](https://swaiter.github.io/images/posts/java/home.png)

### 订单查询（service模块）
直接调用rpc方法，获取productService实现对象，这个对象通过动态代理的方式获取，如果想了解动态代理和反射知识点，可以参考我的另外两个开源的源码地址

[我的git地址 https://github.com/SWaiter/proxy.git](https://github.com/SWaiter/proxy.git)
[我的git地址 https://github.com/SWaiter/reflect.git](https://github.com/SWaiter/reflect.git)

rpc的实现在api模块中
```java
public class Main {
    public static void main(String[] args) {
        IProductService productService = (IProductService) com.yoozoo.api.Main.rpc(IProductService.class);
        Product product = productService.queryById(1025);
        System.out.println(product);
    }
}
```

### 商品服务（api模块）
1、首先是bean

```java
   public class Product implements Serializable{
       private long id;
       private String name;
       private double price;
       //省去set、get 、tostring 方法
       }

```
2、定义查询接口
```java
public interface IProductService {
    public Product queryById(long id);
}
```
3、接口实现

```java
public class ProductService implements IProductService{
    @Override
    public Product queryById(long id) {
        Product product = new Product();
        product.setId(id);
        product.setName("wangshan");
        product.setPrice(12211.2125);
        return product;
    }
}
```
4、rpc方法实现
```java
public static Object rpc(final Class iProductServiceClass) {
        return Proxy.newProxyInstance(iProductServiceClass.getClassLoader(), new Class[]{iProductServiceClass}, new InvocationHandler() {
            @Override
            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                Socket socket = new Socket("127.0.0.1", 19088);

                String apiClassName = iProductServiceClass.getName();
                String methodName = method.getName();
                Class[] parameterTypes = method.getParameterTypes();

                ObjectOutputStream objectOutputStream = new ObjectOutputStream(socket.getOutputStream());
                objectOutputStream.writeUTF(apiClassName);
                objectOutputStream.writeUTF(methodName);
                objectOutputStream.writeObject(parameterTypes);
                objectOutputStream.writeObject(args);
                objectOutputStream.flush();

                ObjectInputStream objectInputStream = new ObjectInputStream(socket.getInputStream());
                Object o = objectInputStream.readObject();
                objectInputStream.close();
                objectOutputStream.close();

                socket.close();
                return o;
            }
        });
    }

```
5、rpc启动

```java
public static void main(String[] args) {
            try {
                ServerSocket serverSocket = new ServerSocket(19088);
                while (true) {
                    Socket socket = serverSocket.accept();
                    ObjectInputStream objectInputStream = new ObjectInputStream(socket.getInputStream());
    
                    String apiClassName = objectInputStream.readUTF();
                    String methodName = objectInputStream.readUTF();
                    Class[] parameterTypes = (Class[]) objectInputStream.readObject();
                    Object[] args4method = (Object[]) objectInputStream.readObject();
    
                    Class clazz = null;
    
                    if (apiClassName.equals(IProductService.class.getName())) {
                        clazz = ProductService.class;
                    }
                    Method method = clazz.getMethod(methodName, parameterTypes);
                    Object invoke = method.invoke(clazz.newInstance(), args4method);
    
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(socket.getOutputStream());
                    objectOutputStream.writeObject(invoke);
                    objectOutputStream.flush();
    
                    objectInputStream.close();
                    objectOutputStream.close();
                    socket.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
```

### 启动
1、首先启动api中的service中的Main.main方法  
2、然后启动service中的Main.main方法  
3、就可以获取服务对象
```bash
com.intellij.rt.execution.application.AppMain com.yoozoo.service.Main
Product{id=1025, name='wangshan', price=12211.2125}
Process finished with exit code 0
```

###项目地址

```bash
https://github.com/SWaiter/RPC.git
```

[我的git地址 https://github.com/SWaiter/RPC.git](https://github.com/SWaiter/RPC.git)


###总结

就这一个简单的rpc框架就完成了。有什么问题可以QQ联系交流。（787324413）
