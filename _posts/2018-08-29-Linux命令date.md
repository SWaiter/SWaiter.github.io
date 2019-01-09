---
layout: post
title: Linux命令date日期时间和Unix时间戳互转
categories: swaiter
description: 使用MSCK命令修复Hive表分区
keywords: 使用MSCK命令修复Hive表分区
---
## 将日期转换为Unix时间戳

```bash
date +%s
```

输出

```bash
1547023143
```

转换指定日期为Unix时间戳：

```bash
date -d '2018-2-22 22:14' +%s
```

输出

```bash
1519308840
```

## 将Unix时间戳转换为日期时间

不指定日期时间的格式：
```bash
date -d @1361542596
```

输出

```bash
Fri Feb 22 22:16:36 CST 2013
```

指定日期格式的转换：

```bash
date -d @1361542596 +"%Y-%m-%d %H:%M:%S"
```

输出

```bash
2013-02-22 22:16:36
```
