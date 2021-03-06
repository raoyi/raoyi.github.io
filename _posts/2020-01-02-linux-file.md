---
layout: post
title:  Linux文件属性
date:   2020-01-02
tags:   Linux
---

* 目录
{:toc}

![]({{ site.url }}/img/post/Linux文件属性图解.png)

## 档案类型详解

- `d`：目录
- `-`：文件
- `l`：链接档(link file)
- `b`：装置文件中可供储存的接口设备(可随机存取装置)
- `c`：装置文件中的串行端口设备，例如键盘、鼠标(一次性读取装置)

## 改变文件属性与权限

- `chgrp`：改变文件所属群组
- `chown`：改变文件拥有者
- `chmod`：改变文件的权限，SUID，SGID，SBIT等

### 改变所属群组（chgrp）

```
chgrp [-R] dirname/filename ...
```

要被改变的组名必须包含在 `/etc/proup` 文件内

### 改变文件拥有者（chown）

```
chown [-R] 账号名称 文件或目录
chown [-R] 账号名称:组名 文件或目录
```

用户必须是已经存在系统中的账号，即在 `/etc/passwd` 中有记录的用户名才能改变

`chown`命令还可以直接修改群组名称

### 改变文件权限（chmod）

权限顺序：owner/group/others

#### 1. 数字类型改变文件权限

权限与数字的对照关系：

```
r（可读）：4
w（可写）：2
x（可执行）：1
```

即每种身份的完全权限是7，无权限为0

```
chmod [-R] xyz 文件或目录
```

#### 2. 符号类型改变文件权限

|chmod|u（用户）<br>g（组）<br>o（其他）<br>a（所有人）<br>如要同时设置多个身份的权限，<br>使用逗号分隔即可|+（加入）<br>-（除去）<br>=（设定）|r<br>w<br>x|文件或目录|

举例：

```
chmod u=rwx,go=rx .bashrc
```

|组件|内容|r|w|x|
|----|---|--|--|--|
|文件|详细资料data|读到文件内容|修改文件内容|执行文件内容|
|目录|档名|读到档名|修改档名|进入该目录的权限(key)|

### 改变文件属性（chattr）

可以改变ext2文件系统中的文件或目录属性，[详情](https://www.runoob.com/linux/linux-comm-chattr.html)
