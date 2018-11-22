---
layout: post
title: mysql归纳
categories: tools
description: mysql归纳
keywords: mysql
---
## MYSQL日期 字符串 时间戳互转


平时比较常用的时间、字符串、时间戳之间的互相转换，虽然常用但是几乎每次使用时候都喜欢去搜索一下用法；本文将作为一个笔记，整理一下三者之间的 转换（即：date转字符串、date转时间戳、字符串转date、字符串转时间戳、时间戳转date，时间戳转字符串）用法，方便日后查看；

- 涉及的函数
```mysql
date_format(date, format) 函数，MySQL日期格式化函数date_format()
unix_timestamp() 函数
str_to_date(str, format) 函数
from_unixtime(unix_timestamp, format) 函数，MySQL时间戳格式化函数from_unixtime
```

- 时间转字符串
```mysql
select date_format(now(), '%Y-%m-%d');

#结果：2016-01-05
```
- 时间转时间戳
```mysql
select unix_timestamp(now());

#结果：1452001082
```
- 字符串转时间
```mysql
select str_to_date('2016-01-02', '%Y-%m-%d %H');

#结果：2016-01-02 00:00:00
```
- 字符串转时间戳
```mysql
select unix_timestamp('2016-01-02');
select unix_timestamp(str_to_date('2016-01-02', '%Y-%m-%d %H'));

#结果：1451664000
```
- 时间戳转时间
```mysql
select from_unixtime(1451997924);

#结果：2016-01-05 20:45:24
```
- 时间戳转字符串
```mysql
select from_unixtime(1451997924,'%Y-%d');

#结果：2016-01-05 20:45:24
```
C --> Ctrl

S --> Shift

M --> Alt

Cmd --> Command

### 常用操作

| 功能               | Windows  | Mac OS X |
|:-------------------|:---------|:---------|
| 当前页面下新建页面 | C-Return |          |
| 预览               | F5       |          |
| 生成 HTML 文件     | F8       |          |
| 置于顶层           | C-S-]    |          |
| 置于底层           | C-S-[    |          |
| 上移一层           | C-]      |          |
| 下移一层           | C-[      |          |
| 开关左侧功能栏     | C-M-[    |          |
| 开关右侧功能栏     | C-M-]    |          |

### 操作多个元件

| 功能     | Windows | Mac OS X |
|:---------|:--------|:---------|
| 左对齐   | C-M-l   |          |
| 左右居中 | C-M-c   |          |
| 右对齐   | C-M-r   |          |
| 顶部对齐 | C-M-t   |          |
| 上下居中 | C-M-m   |          |
| 底部对齐 | C-M-b   |          |
| 组合     | C-g     |          |