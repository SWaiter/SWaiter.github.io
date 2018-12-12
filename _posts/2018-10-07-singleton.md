---
layout: post
title: 单例模式
categories: swaiter
description: 单例模式
keywords: shell
---

### 为什么要用单例模式？手写几种线程安全的单例模式？

简单来说使用单例模式可以带来下面几个好处:
- 对于频繁使用的对象，可以省略创建对象所花费的时间，这对于那些重量级对象而言，是非常可观的一笔系统开销；
- 由于 new 操作的次数减少，因而对系统内存的使用频率也会降低，这将减轻 GC 压力，缩短 GC 停顿时间。

### 创建方式
#### 懒汉式(双重检查加锁版本)
```java
public class Singleton {

    //volatile保证，当uniqueInstance变量被初始化成Singleton实例时，多个线程可以正确处理uniqueInstance变量
    private volatile static Singleton uniqueInstance;
    private Singleton() {
    }
    public static Singleton getInstance() {
       //检查实例，如果不存在，就进入同步代码块
        if (uniqueInstance == null) {
            //只有第一次才彻底执行这里的代码
            synchronized(Singleton.class) {
               //进入同步代码块后，再检查一次，如果仍是null，才创建实例
                if (uniqueInstance == null) {
                    uniqueInstance = new Singleton();
                }
            }
        }
        return uniqueInstance;
    }
}
```
#### 静态内部类方式
静态内部实现的单例是懒加载的且线程安全。

```java
public class Singleton {  
    private static class SingletonHolder {  
    private static final Singleton INSTANCE = new Singleton();  
    }  
    private Singleton (){}  
    public static final Singleton getInstance() {  
    return SingletonHolder.INSTANCE;  
    }  
}   
```

只有通过显式调用 getInstance 方法时，才会显式装载 SingletonHolder 类，从而实例化 instance（只有第一次使用这个单例的实例的时候才加载，同时不会有线程安全问题）。

报错信息：*.sh: /bin/sh^M: bad interpreter: No such file or directory，根据报错提示查找 /bin/sh文件，有啊，这个没问题了，然后修改文件，把 /bin/sh 改成 /bin/bash，反复修改了两次，依然不行。然后参考其他的类似脚本也基本一致，就复制了下第一行，并粘到上传的脚本第一行位置，再次运行，还是报错，应该可以用文本处理三剑客搞定，然后网上查了下解决办法，使用 dos2unix命令转换编码格式即可，


使用以下方式生效
可以有很多种办法看这个文件是DOS格式的还是UNIX格式的, 还是MAC格式的
1.vim filename
然后用命令 :set ff? 
可以看到dos或unix的字样. 如果的确是dos格式的, 那么你可以用set ff=unix把它强制为unix格式的, 然后存盘退出. 再运行一遍看.
2.可以用执行dos2unix 命令转换编码 

```bash
# dos2unix myshell.sh
```

3..也可以用sed 这样的工具来做: sed 's/^M//' filename > tmp_filename mv -f tmp_filename filename 来做 特别说明:^M并不是按键shift + 6产生的^和字母M, 它是一个字符, 其ASCII是0x0D, 生成它的办法是先按CTRL+V, 然后再回车(或CTRL+M)关于^M

new line of DOS/Windows
new line of dos/win: 0X0d0a new line of linux/unix: 0X0a
