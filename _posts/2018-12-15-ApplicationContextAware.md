---
layout: post
title: SpringContextHolder 静态持有SpringContext的引用
categories: swaiter
description: SpringContextHolder 静态持有SpringContext的引用
keywords: ApplicationContextAware 
---
SpringContextHolder 静态持有SpringContext的引用 
```java
package com.test.quartz;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 *
 * 以静态变量保存Spring ApplicationContext, 可在任何代码任何地方任何时候中取出ApplicaitonContext.
 * 
 */

public class SpringContextHolder implements ApplicationContextAware {

	private static ApplicationContext applicationContext;

	// 实现ApplicationContextAware接口的context注入函数, 将其存入静态变量.
	public void setApplicationContext(ApplicationContext applicationContext) {
		SpringContextHolder.applicationContext = applicationContext;

	}

	// 取得存储在静态变量中的ApplicationContext.
	public static ApplicationContext getApplicationContext() {
		checkApplicationContext();
		return applicationContext;

	}

	// 从静态变量ApplicationContext中取得Bean, 自动转型为所赋值对象的类型.
	@SuppressWarnings("unchecked")
	public static <T> T getBean(String name) {
		checkApplicationContext();
		return (T) applicationContext.getBean(name);

	}

	// 从静态变量ApplicationContext中取得Bean, 自动转型为所赋值对象的类型.
	// 如果有多个Bean符合Class, 取出第一个.
	@SuppressWarnings("unchecked")
	public static <T> T getBean(Class<T> clazz) {
		checkApplicationContext();
		return (T) applicationContext.getBeansOfType(clazz);
	
	}

	private static void checkApplicationContext() {
		if (applicationContext == null) {
			throw new IllegalStateException("applicaitonContext未注入,请在applicationContext.xml中定义SpringContextHolder");
		}
	}

}
```

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
