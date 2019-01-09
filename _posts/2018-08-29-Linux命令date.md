---
layout: post
title: 使用MSCK命令修复Hive表分区
categories: swaiter
description: 使用MSCK命令修复Hive表分区
keywords: 使用MSCK命令修复Hive表分区
---
一、介绍

我们平时通常是通过alter table add partition方式增加Hive的分区的，但有时候会通过HDFS put/cp命令往表目录下拷贝分区目录，如果目录多，需要执行多条alter语句，非常麻烦。Hive提供了一个"Recover Partition"的功能。

```hql
MSCK REPAIR TABLE table_name;
```
原理相当简单，执行后，Hive会检测如果HDFS目录下存在但表的metastore中不存在的partition元信息，更新到metastore中。
二、测试

```hql
hadoop fs -ls hdfs://youzu-hadoop/user/hive/warehouse/pri_jinkong.db/gio_user_business_client
Found 9 items
drwxrwxrwx   - presto supergroup          0 2018-12-29 11:07 hdfs://youzu-hadoop/user/hive/warehouse/pri_jinkong.db/gio_user_business_client/ds=20181221
drwxrwxrwx   - presto supergroup          0 2018-12-29 11:07 hdfs://youzu-hadoop/user/hive/warehouse/pri_jinkong.db/gio_user_business_client/ds=20181222
drwxrwxrwx   - presto supergroup          0 2018-12-29 11:06 hdfs://youzu-hadoop/user/hive/warehouse/pri_jinkong.db/gio_user_business_client/ds=20181223
drwxrwxrwx   - presto supergroup          0 2018-12-29 11:06 hdfs://youzu-hadoop/user/hive/warehouse/pri_jinkong.db/gio_user_business_client/ds=20181224
drwxrwxrwx   - presto supergroup          0 2018-12-29 11:54 hdfs://youzu-hadoop/user/hive/warehouse/pri_jinkong.db/gio_user_business_client/ds=20181225
drwxrwxrwx   - presto supergroup          0 2018-12-29 10:42 hdfs://youzu-hadoop/user/hive/warehouse/pri_jinkong.db/gio_user_business_client/ds=20181226
drwxrwxrwx   - presto supergroup          0 2018-12-28 17:21 hdfs://youzu-hadoop/user/hive/warehouse/pri_jinkong.db/gio_user_business_client/ds=20181227
drwxrwxrwx   - presto supergroup          0 2018-12-29 09:50 hdfs://youzu-hadoop/user/hive/warehouse/pri_jinkong.db/gio_user_business_client/ds=20181228
drwxrwxrwx   - presto supergroup          0 2018-12-27 18:30 hdfs://youzu-hadoop/user/hive/warehouse/pri_jinkong.db/gio_user_business_client/ds=__HIVE_DEFAULT_PARTITION__

```
目录存在
```hql
hive (pri_jinkong)> show partitions gio_user_business_client;
OK
Time taken: 0.306 seconds

```
不存在metadata中。
使用 MSCK REPAIR TABLE TABLE

```hql
MSCK REPAIR TABLE gio_user_business_client;
OK
Partitions not in metastore:	gio_user_business_client:ds=20181221	gio_user_business_client:ds=20181222	gio_user_business_client:ds=20181223	gio_user_business_client:ds=20181224	gio_user_business_client:ds=20181225	gio_user_business_client:ds=20181226	gio_user_business_client:ds=20181227	gio_user_business_client:ds=20181228	gio_user_business_client:ds=__HIVE_DEFAULT_PARTITION__
Repair: Added partition to metastore gio_user_business_client:ds=20181221
Repair: Added partition to metastore gio_user_business_client:ds=20181222
Repair: Added partition to metastore gio_user_business_client:ds=20181223
Repair: Added partition to metastore gio_user_business_client:ds=20181224
Repair: Added partition to metastore gio_user_business_client:ds=20181225
Repair: Added partition to metastore gio_user_business_client:ds=20181226
Repair: Added partition to metastore gio_user_business_client:ds=20181227
Repair: Added partition to metastore gio_user_business_client:ds=20181228
Repair: Added partition to metastore gio_user_business_client:ds=__HIVE_DEFAULT_PARTITION__
Time taken: 0.383 seconds, Fetched: 10 row(s)
hive (pri_jinkong)> show partitions gio_user_business_client;
OK
ds=20181221
ds=20181222
ds=20181223
ds=20181224
ds=20181225
ds=20181226
ds=20181227
ds=20181228
ds=__HIVE_DEFAULT_PARTITION__
Time taken: 0.264 seconds, Fetched: 9 row(s)

```
添加分区成功
```hql
#当前没有partition元信息
hive> show partitions cr_cdma_bsi_mscktest;
OK
Time taken: 0.104 seconds
#创建两个分区目录
hive> dfs -mkdir /user/hive/warehouse/cr_cdma_bsi_mscktest/month=201603;
hive> dfs -mkdir /user/hive/warehouse/cr_cdma_bsi_mscktest/month=201604;
#使用MSCK修复分区
hive> msck repair table cr_cdma_bsi_mscktest;
OK
Partitions not in metastore:	cr_cdma_bsi_mscktest:month=201603
Partitions not in metastore:	cr_cdma_bsi_mscktest:month=201604
Repair: Added partition to metastore cr_cdma_bsi_mscktest:month=201603
Repair: Added partition to metastore cr_cdma_bsi_mscktest:month=201604
Time taken: 0.286 seconds, Fetched: 2 row(s)
#再次查看，发现已经成功更新元信息
hive> show partitions cr_cdma_bsi_mscktest;
OK
month=201603
month=201604
Time taken: 0.102 seconds, Fetched: 1 row(s)
```


## hive修改 表/分区语句
### 添加分区
```hql
ALTER TABLE table_name ADD PARTITION (partCol = 'value1') location 'loc1'; //示例
ALTER TABLE table_name ADD IF NOT EXISTS PARTITION (dt='20130101') LOCATION '/user/hadoop/warehouse/table_name/dt=20130101'; //一次添加一个分区

ALTER TABLE page_view ADD PARTITION (dt='2008-08-08', country='us') location '/path/to/us/part080808' PARTITION (dt='2008-08-09', country='us') location '/path/to/us/part080809';  //一次添加多个分区
```
### 删除分区
```hql
ALTER TABLE login DROP IF EXISTS PARTITION (dt='2008-08-08');

ALTER TABLE page_view DROP IF EXISTS PARTITION (dt='2008-08-08', country='us');
```


### 修改分区

```hql
ALTER TABLE table_name PARTITION (dt='2008-08-08') SET LOCATION "new location";
ALTER TABLE table_name PARTITION (dt='2008-08-08') RENAME TO PARTITION (dt='20080808');
```
### 添加列
```hql
ALTER TABLE table_name ADD COLUMNS (col_name STRING);  //在所有存在的列后面，但是在分区列之前添加一列
```
### 修改列
```hql
CREATE TABLE test_change (a int, b int, c int);

// will change column a's name to a1
ALTER TABLE test_change CHANGE a a1 INT; 

// will change column a's name to a1, a's data type to string, and put it after column b. The new table's structure is: b int, a1 string, c int
ALTER TABLE test_change CHANGE a a1 STRING AFTER b; 

// will change column b's name to b1, and put it as the first column. The new table's structure is: b1 int, a string, c int
ALTER TABLE test_change CHANGE b b1 INT FIRST; 
```

### 修改表属性:
```hql
alter table table_name set TBLPROPERTIES ('EXTERNAL'='TRUE');  //内部表转外部表 
alter table table_name set TBLPROPERTIES ('EXTERNAL'='FALSE');  //外部表转内部表
```

### 表的重命名
```hql
ALTER TABLE table_name RENAME TO new_table_name
```

