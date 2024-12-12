---
layout: post
title:  Windows CMD/PowerShell命令收集
date:   2024-12-12
tags:   Windows CMD PowerShell
---

.cpl文件列表

- appwiz.cpl：程序和功能
- control userpasswords：用户账户
- control userpasswords2：用户账户对话框
- devicepairingwizard：添加设备向导
- desk.cpl：显示设置
- devmgmt.msc：设备管理器（hdwwiz.cpl）
- firewall.cpl：Windows Defender防火墙
- fonts：字体控制面板文件夹
- inetcpl.cpl：Internet属性
- intl.cpl：区域设置
- main.cpl：鼠标属性
- mmsys.cpl：声音设置
- ncpa.cpl：网络连接
- powercfg.cpl：电源选项
- recdisc：系统修复盘创建
- shrpubw：共享文件夹创建向导
- sysdm.cpl：系统属性
- timedate.cpl：时间和日期属性

.msc文件列表

- certlm.msc：本地计算机证书管理
- certmgr.msc：当前用户证书管理
- compmgmt.msc：计算机管理
- dcomcnfg：系统组件服务
- fsmgmt.msc：共享文件夹管理器
- gpedit.msc：组策略
- lusrmgr.msc：本地用户和组
- perfmon.msc：性能监视器
- rsop.msc：结果集的组策略
- services.msc：服务


- calc：启动计算器。
- certmgr.msc：打开证书管理实用程序。
- charmap：启动字符映射表。
- chkdsk.exe：运行Chkdsk磁盘检查工具。
- cleanmgr：打开磁盘清理工具。
- cmd.exe：打开命令提示符。
- colorcpl：打开颜色管理设置。
- compmgmt.msc：打开计算机管理。
- control：打开控制面板。
- dcomcnfg：打开组件服务。
- diskmgmt.msc：打开磁盘管理。
- dxdiag：运行DirectX诊断工具。
- eventvwr.msc：打开事件查看器。
- explorer：打开文件资源管理器。
- firewall.cpl：打开Windows防火墙设置。
- fsmgmt.msc：打开共享文件夹管理器。
- gpedit.msc：打开本地组策略编辑器（仅限专业版和企业版）。
- hdwwiz.cpl：打开硬件向导。
- inetcpl.cpl：打开Internet属性设置。
- intl.cpl：打开区域设置。
- joy.cpl：打开游戏控制器设置。
- logoff：注销当前用户。
- lusrmgr.msc：打开本地用户和组管理。
- main.cpl：打开鼠标属性设置。
- mmsys.cpl：打开声音设置。
- msconfig：打开系统配置实用程序。
- msinfo32：打开系统信息。
- netstat -an：显示活动的TCP连接。
- notepad：打开记事本。
- odbcad32：打开ODBC数据源管理器。
- osk：打开屏幕键盘。
- perfmon.msc：打开性能监视器。
- powercfg.cpl：打开电源选项。
- printmanagement.msc：打开打印管理。
- rasphone：打开电话和调制解调器选项。
- regedit：打开注册表编辑器。
- services.msc：打开服务管理。
- sfc /scannow：运行系统文件检查器。
- shrpubw：打开共享文件夹创建向导。
- sigverif：打开文件签名验证程序。
- slui：打开Windows激活信息。
- sysdm.cpl：打开系统属性。
- taskmgr：打开任务管理器。
- timedate.cpl：打开日期和时间设置。
- utilman：打开辅助功能管理器。
- wuapp：打开Windows更新。


以下是Windows 11中ms-settings:命令的完整列表，这些命令可以用来快速打开特定的设置页面：

可在运行窗口直接输入命令或在cmd及powershell窗口中输入 start ms-settings:xxx

系统

- 关于：ms-settings:about
- 高级显示设置：ms-settings:display-advanced（仅支持高级显示选项的设备可用）
- 节电模式：ms-settings:batterysaver（仅具有电池的设备可用，例如平板电脑）
- 节电模式设置：ms-settings:batterysaver-settings（仅具有电池的设备可用，例如平板电脑）
- 电池使用：ms-settings:batterysaver-usagedetails（仅具有电池的设备可用，例如平板电脑）
- 剪贴板：ms-settings:clipboard
- 显示：ms-settings:display
- 默认保存位置：ms-settings:savelocations
- 显示：ms-settings:screenrotation
- 复制我的显示器：ms-settings:quietmomentspresentation
- 在这些小时内：ms-settings:quietmomentsscheduled
- 加密：ms-settings:deviceencryption
- 能源建议：ms-settings:energyrecommendations（适用于 Windows 11 版本 22H2 版本 22624 或更高版本的 22 月时刻更新）
- 专注助手：ms-settings:quiethours
- 图形设置：ms-settings:display-advancedgraphics（仅支持高级图形选项的设备可用）
- 图形默认设置：ms-settings:display-advancedgraphics-default
- 多任务：ms-settings:multitasking ms-settings:multitasking-sgupdate
- 夜灯设置：ms-settings:nightlight
- 投影到此电脑：ms-settings:project
- 共享体验：ms-settings:crossdevice
- 平板模式：ms-settings:tabletmode（已在 Windows 11 中删除）
- 任务栏：ms-settings:taskbar
- 通知和操作：ms-settings:notifications
- 远程桌面：ms-settings:remotedesktop
- Phone：ms-settings:phone（已在 Windows 10 版本 1809 及更高版本中弃用）
- 电源和睡眠：ms-settings:powersleep
- 存在感测：ms-settings:presence（已在适用于 Windows 11 版本 22H2 内部版本 22624 的 5 月 Moment 更新中添加）
- 存储：ms-settings:storagesense
- 存储感知：ms-settings:storagepolicies
- 有关存储的建议：ms-settings:storagerecommendations
- 磁盘和卷：ms-settings:disksandvolumes

时间和语言

- 日期和时间：ms-settings:dateandtime
- 日本 IME 设置：ms-settings:regionlanguage-jpnime（安装了 Microsoft Japan 输入法编辑器则可用）
- 区域：ms-settings:regionformatting
- 语言：ms-settings:keyboard ms-settings:keyboard-advanced ms-settings:regionlanguage ms-settings:regionlanguage-bpmfime ms-settings:regionlanguage-cangjieime ms-settings:regionlanguage-chsime-wubi-udp ms-settings:regionlanguage-quickime ms-settings:regionlanguage-korime
- 拼音 IME 设置：ms-settings:regionlanguage-chsime-pinyin（在安装了 Microsoft 拼音输入法编辑器的情况下可用）ms-settings:regionlanguage-chsime-pinyin-domainlexicon ms-settings:regionlanguage-chsime-pinyin-keyconfig ms-settings:regionlanguage-chsime-pinyin-udp
- 语音：ms-settings:speech
- 五笔 IME 设置：ms-settings:regionlanguage-chsime-wubi（安装了 Microsoft 五笔输入法编辑器则可用）
- 添加显示语言：ms-settings:regionlanguage-adddisplaylanguage
- 语言选项：ms-settings:regionlanguage-languageoptions
- 设置显示语言：ms-settings:regionlanguage-setdisplaylanguage

更新和安全

- 激活：ms-settings:activation
- 传递优化：ms-settings:delivery-optimization ms-settings:delivery-optimization-activity ms-settings:delivery-optimization-advanced
- 查找我的设备：ms-settings:findmydevice
- 面向开发人员：ms-settings:developers
- 恢复：ms-settings:recovery
- 启动安全密钥注册：ms-settings:signinoptions-launchsecuritykeyenrollment
- 疑难解答：ms-settings:troubleshoot
- Windows 安全性：ms-settings:windowsdefender
- Windows 预览体验计划：ms-settings:windowsinsider（仅当用户在 WIP 中注册后才存在）ms-settings:windowsinsider-optin
- Windows 更新：ms-settings:windowsupdate ms-settings:windowsupdate-action
- Windows 更新-活动小时数：ms-settings:windowsupdate-activehours
- Windows 更新-高级选项：ms-settings:windowsupdate-options
- Windows 更新-可选更新：ms-settings:windowsupdate-optionalupdates
- Windows 更新-重启选项：ms-settings:windowsupdate-restartoptions
- Windows 更新-按需查找器：ms-settings:windowsupdate-seekerondemand
- Windows 更新-查看更新历史记录：ms-settings:windowsupdate-history

这些命令可以在“运行”对话框中使用，也可以在文件资源管理器的地址栏、PowerShell 或命令提示符中使用。您只需输入相应的命令，然后按回车键即可打开对应的设置页面。