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
## 附表
MySQL日期格式化（format）取值范围
```hql
值   含义
秒   %S、%s   两位数字形式的秒（ 00,01, ..., 59）
分   %I、%i   两位数字形式的分（ 00,01, ..., 59）
小时  %H  24小时制，两位数形式小时（00,01, ...,23）
%h  12小时制，两位数形式小时（00,01, ...,12）
%k  24小时制，数形式小时（0,1, ...,23）
%l  12小时制，数形式小时（0,1, ...,12）
%T  24小时制，时间形式（HH:mm:ss）
%r   12小时制，时间形式（hh:mm:ss AM 或 PM）
%p  AM上午或PM下午
  周      %W 一周中每一天的名称（Sunday,Monday, ...,Saturday）
 %a 一周中每一天名称的缩写（Sun,Mon, ...,Sat）
%w  以数字形式标识周（0=Sunday,1=Monday, ...,6=Saturday）
%U  数字表示周数，星期天为周中第一天
%u  数字表示周数，星期一为周中第一天
天   %d  两位数字表示月中天数（01,02, ...,31）
%e   数字表示月中天数（1,2, ...,31）
 %D 英文后缀表示月中天数（1st,2nd,3rd ...）
 %j 以三位数字表示年中天数（001,002, ...,366）
月   %M  英文月名（January,February, ...,December）
%b  英文缩写月名（Jan,Feb, ...,Dec）
%m  两位数字表示月份（01,02, ...,12）
%c  数字表示月份（1,2, ...,12）
年   %Y  四位数字表示的年份（2015,2016...）
%y   两位数字表示的年份（15,16...）
文字输出    %文字     直接输出文字内容

```

## 日期常用函数
MySQL Date 函数
```mysql
DATE_SUB(date,INTERVAL expr type)
```
|type 类型
:----|
MICROSECOND|
SECOND|
MINUTE|
HOUR|
DAY|
WEEK|
MONTH|
QUARTER|
YEAR|
SECOND_MICROSECOND|
MINUTE_MICROSECOND|
MINUTE_SECOND|
HOUR_MICROSECOND|
HOUR_SECOND|
HOUR_MINUTE|
DAY_MICROSECOND|
DAY_SECOND|
DAY_MINUTE|
DAY_HOUR|
YEAR_MONTH|
- 实例
```mysql
select DATE_SUB(now(),INTERVAL 7 day)
```
### insert
- 实例
```mysql
-- INSERT INTO 表名称 VALUES (值1, 值2,....)
-- 指定插入的列  
-- INSERT INTO table_name (列1, 列2,...) VALUES (值1, 值2,....)
INSERT INTO Persons VALUES ('Gates', 'Bill', 'Xuanwumen 10', 'Beijing')

```

### Update
- 实例
```mysql
-- UPDATE 表名称 SET 列名称 = 新值 WHERE 列名称 = 某值
UPDATE Person SET FirstName = 'Fred' WHERE LastName = 'Wilson' 

```
### DELETE
- 实例
```mysql
-- DELETE FROM 表名称 WHERE 列名称 = 值
DELETE FROM Person WHERE LastName = 'Wilson' 

```
## 其他函数
