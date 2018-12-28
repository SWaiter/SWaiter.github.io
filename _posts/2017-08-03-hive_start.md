---
layout: post
title: hive 基础
categories: swaiter
description: hive入门
keywords: hive、table、db、join
---

在实际后台服务开发中，RPC框架具有很大的优势，其中当前dubbo已经受到大家的关注和认可，现在开始进行手动码一个简单的RPC框架。
### hive简介

```hql
hive是基于Hadoop的一个数据仓库工具，
可以将结构化的数据文件映射为一张数据库表，并提供完整的sql查询功能，
可以将sql语句转换为MapReduce任务进行运行。其优点是学习成本低，
可以通过类SQL语句快速实现简单的MapReduce统计，
不必开发专门的MapReduce应用，十分适合数据仓库的统计分析。
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

# music_data里面的文件是这样的

$ hadoop fs -cat /test/music/music_data | more
xxx|9|让音乐串起你我|云南省|文山壮族苗族自治州|75后|新浪微博|482|2002|326
xx|8|None|云南省|曲靖市|75后|None|0|12|4
xx|8|百年云烟只过眼，不为繁华易素心|贵州省|贵阳市|85后|None|1|22|1
```
```bash
# 文件大小
$ hadoop fs -du /t_user/my_hive_db/my_hive_table_test01
17/10/15 12:14:54 INFO hdfs.PeerCache: SocketCache disabled.
282171728  /t_user/my_hive_db/my_hive_table_test01/000000_0
281446475  /t_user/my_hive_db/my_hive_table_test01/000001_0
281021562  /t_user/my_hive_db/my_hive_table_test01/000002_0
280834172  /t_user/my_hive_db/my_hive_table_test01/000003_0
280411919  /t_user/my_hive_db/my_hive_table_test01/000004_0
279749295  /t_user/my_hive_db/my_hive_table_test01/000005_0

$ hadoop fs -du -h /t_user/my_hive_db/my_hive_table_test01
17/10/15 12:17:05 INFO hdfs.PeerCache: SocketCache disabled.
269.1 M  /t_user/my_hive_db/my_hive_table_test01/000000_0
268.4 M  /t_user/my_hive_db/my_hive_table_test01/000001_0
268.0 M  /t_user/my_hive_db/my_hive_table_test01/000002_0
267.8 M  /t_user/my_hive_db/my_hive_table_test01/000003_0
267.4 M  /t_user/my_hive_db/my_hive_table_test01/000004_0
266.8 M  /t_user/my_hive_db/my_hive_table_test01/000005_0

$ hadoop fs -du -s /t_user/my_hive_db/my_hive_table_test01
17/10/15 12:16:52 INFO hdfs.PeerCache: SocketCache disabled.
29959873142  /t_user/my_hive_db/my_hive_table_test01

$ hadoop fs -du -s -h /t_user/my_hive_db/my_hive_table_test01
17/10/15 12:17:17 INFO hdfs.PeerCache: SocketCache disabled.
27.9 G  /t_user/my_hive_db/my_hive_table_test01
```

#### 4.建表
然后再直接建hive表并关联数据
```bash
hive> create external table test.163music(   //建立外表，选择的数据库是test，表是163music
    nickname string,
    stage string,
    introduce string,
    province string,
    city string,
    age string,
    social string,
    trends string,
    follow string,
    fans string,
    homepage string)   //这里是列名
    ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'   //这里是关联进表里面的数据的分隔符
    LOCATION '/test/music/';    //这里location 选择的是hdfs的路径，比如我把我文件放在hdfs路径是/test/music/
```
如果是内表的话，会默认url，内表和外表有一定的区别，对外表进行drop，其对应的文件保留。

###5.查看数据
```hql
select * from test.163music limit 1;
```

###6.查看表结构
```hql
desc test.163music;
```
结果是：
```hql
nickname                string
stage                   string
introduce               string
province                string
city                    string
age                     string
social                  string
trends                  string
follow                  string
fans                    string
homepage                string
```

