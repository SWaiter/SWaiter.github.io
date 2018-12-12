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