---
layout: post
title:  Windows PowerShell 5与PowerShell 7区别
date:   2024-11-22
tags:   powershell
---

## 独立安装路径和可执行文件名：

- Windows PowerShell 5.1：`$env:WINDIR\System32\WindowsPowerShell\v1.0`
- PowerShell 7：`$env:ProgramFiles\PowerShell\7`

## 可执行文件名：

- PowerShell 7：`pwsh.exe`
- Windows PowerShell：`powershell.exe`

## 独立的PSModulePath：

Windows PowerShell和PowerShell 7将模块存储在不同的位置。PowerShell 7将这些位置合并到 `$Env:PSModulePath` 环境变量中，使得可以同时加载核心模块和桌面模块。

## .NET版本差异：

PowerShell 7.2是在.NET 6.0基础上构建的，而Windows PowerShell 5.1是在.NET Framework 4.x基础上构建的。.NET版本之间的差异可能会影响脚本的行为，尤其是在直接调用.NET方法时。

## 安装方法：

可以通过以下方法之一安装PowerShell 7：

- 一键安装：使用单行命令快速安装PowerShell 7。
- 从GitHub下载：访问PowerShell GitHub页面，下载PowerShell 7安装程序，并按照安装向导进行安装。
- 使用WinGet（Windows包管理器）：运行下列命令来下载并安装PowerShell 7。
```
winget install --id Microsoft.Powershell
```

## 更新PowerShell 7：

为了确保使用最新版本，你可以使用下列命令来更新PowerShell 7到最新版本。
```
winget upgrade --id Microsoft.Powershell
```

## 并行使用：

可以并行使用Windows PowerShell 5.1和PowerShell 7。你可以通过开始菜单或Windows Terminal打开PowerShell 7，并使用 $PSVersionTable 命令检查版本。

按照这些步骤，你可以顺利地将Windows PowerShell 5升级到PowerShell 7，并享受新版本带来的改进和功能。