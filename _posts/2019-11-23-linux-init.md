---
layout: post
title:  Linux init的各种状态
date:   2019-11-23
tags:   Linux
---

- 0：关机
- 1：单用户形式，只 `root` 进行维护
- 2：多用户，不能使用 `net file system`
- 3：完全多用户
- 4：安全模式
- 5：图形化
- 6：重启

其实，可以通过查看 `/etc/rc.d/` 中的 `rc*.d` 的文件来对比理解。

- `init 0` ，对应的系统会运行，`/etc/rc.d/rc0.d` 里指定的程序。

```
[root@prcraoyi ~]# ls /etc/rc.d/rc0.d
```

开机会执行的两个进程是 `killall` 和 `halt`，这两个都表示为终止进程。故init 0是用于表示关机的。

- `init 1` ，对应的系统会运行，`/etc/rc.d/rc1.d` 里指定的程序。

```
[root@prcraoyi ～] # ls /etc/rc.d/rc1.d
```

这个级别启动的服务有三个，`udev` 、`lvm` 相关的和 `single` (单用户模式的服务)。故此级别是单用户模式，只有 `root` 能用，不支持其他用户。

- `init 2` ，对应的系统会运行，`/etc/rc.d/rc2.d` 里指定的程序。

```
[root@prcraoyi ~ ]# ls /etc/rc.d/rc2.d/
```

这个级别启动的服务多了，`NetworkManager/iptables/acpid/alsa` 都已经开启，但是 `nfs` , `smb` , `openvpn` 相关服务没有开启，这个级别不支持 `nfs` 。

- `init 3` ， 对应的系统运行 `/etc/rc.d/rc3.d`

```
[root@prcraoyi ~] # ls /etc/rc.d/rc3.d/
```

这个级别 `nfs` 服务是开启的，被成为完全多用户模式。

- `init 4`

```
[root@prcraoyi ~ ]# ls /etc/rc.d/rc4.d/
```

此模式被称为安全模式。

- `init 5`

```
[root@prcraoyi ~ ]# ls /etc/rc.d/rc5.d/
```

完整的图形模式

- `init 6`

```
[root@prcraoyi ~ ]# ls /etc/rc.d/rc6.d/
```

这个级别里，只有两个服务，一个为 `killall`，一个是 `reboot`，即，关闭现在的系统，重启。故此级别是重启。

不同的系统版本，可能里面的文件会不同，如果要查看，可以通过ll来看，其实他们都是软连接。
