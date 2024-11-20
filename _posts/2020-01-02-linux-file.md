---
layout: post
title:  Linux文件属性及权限
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

## 用户和组

### 用户

用户信息存储在 'etc/passwd' 文件中，其中每一行表示一个用户，字段之间用冒号分隔，字段包括：

- 用户名
- 密码占位符（通常为 `x` ，实际密码存储在 `/etc/shadow` 文件中）
- 用户ID（UID）
- 组ID（GID）
- 用户描述（如全名）
- 用户主目录
- 用户登录shell

#### `/etc/passwd` 文件格式

```
用户名:密码占位符:UID:GID:用户描述:主目录:登录shell
```

### 组

组信息存储在 `/etc/group` 文件中，其中每一行表示一个组，字段之前用冒号分隔，字段包括：

- 组名
- 密码占位符（通常为空或 `x` ）
- 组ID（GID）
- 组成员（以逗号分隔的用户列表）

#### `/etc/group` 文件格式

```
组名:密码占位符:GID:组成员
```

![]({{ site.url }}/img/post/Linux文件属性图解.webp)

## 改变文件属性与权限

- `chgrp`：改变文件所属群组
- `chown`：改变文件拥有者
- `chmod`：改变文件的权限，SUID，SGID，SBIT等

### 改变所属群组（chgrp）

```
chgrp [-R] 新组 文件名
# 示例
chgrp developers file.txt  # 修改file.txt的组为developers
# 递归修改所有权
chown -R alice:developers /path/to/directory
chgrp -R developers /path/to/directory
```

要被改变的组名必须包含在 `/etc/proup` 文件内

### 改变文件拥有者（chown）

```
chown [-R] 账号名称 文件或目录
chown [-R] 账号名称:组名 文件或目录
# 示例
chown alice file.txt  # 修改file.txt的所有者为alice
chown alice:developers file.txt  # 修改file.txt的所有者为alice，组为developers
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

```
chmod [谁的权限][操作符][权限] 文件名
```

- 谁的权限：u（所有者），g（组），o（其他用户），a（所有人）。
- 操作符：+（增加权限），-（删除权限），=（设置权限）。
- 权限：r（读），w（写），x（执行）。

|chmod|u（用户）<br>g（组）<br>o（其他）<br>a（所有人）<br>如要同时设置多个身份的权限，<br>使用逗号分隔即可|+（加入）<br>-（除去）<br>=（设定）|r<br>w<br>x|文件或目录|

举例：

```
chmod u=rwx,go=rx .bashrc
chmod u+x file.txt  # 给所有者增加执行权限
chmod g-w file.txt  # 删除组的写权限
chmod a=r file.txt  # 设置所有人只有读权限
```

|组件|内容|r|w|x|
|----|---|--|--|--|
|文件|详细资料data|读到文件内容|修改文件内容|执行文件内容|
|目录|档名|读到档名|修改档名|进入该目录的权限(key)|

### 改变文件属性（chattr）

可以改变ext2文件系统中的文件或目录属性，[详情](https://www.runoob.com/linux/linux-comm-chattr.html)

### 特殊权限

#### SUID 和 SGID

- SUID（Set User ID）：应用于可执行文件，使该文件在执行时临时具有文件所有者的权限。表示为 `s`，如 `rwsr-xr-x`。

设置 SUID 的命令示例：

```
chmod u+s file.txt
```

- SGID（Set Group ID）：应用于可执行文件或目录。对于文件，使文件在执行时临时具有文件所属组的权限。对于目录，强制新创建的文件继承该目录的组。表示为 `s`，如 `rwxr-sr-x`。

设置 SGID 的命令示例：

```
chmod g+s file.txt
```

#### Sticky Bit

Sticky Bit应用于目录，防止普通用户删除或修改其他用户的文件。表示为 `t`，如`rwxrwxrwt`。

设置Sticky Bit的命令示例：

```
chmod +t directory
```

#### 应用场景和注意事项

- SUID 和 SGID 常用于提高某些程序的权限，如 `passwd` 命令需要临时提升权限以修改用户密码。
- Sticky Bit常用于共享目录，如 `/tmp` 目录，确保用户只能删除自己创建的文件。
- 使用特殊权限时需谨慎，避免造成安全漏洞。
