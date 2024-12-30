---
layout: post
title:  PowerShell内置变量
date:   2024-12-20
tags:   Windows PowerShell
---

PowerShell内置变量：

1. `$null` - 表示一个不存在的值。
2. `$$` - 表示当前的美元符号（$）。
3. `$?` - 布尔值，表示上一个命令是否成功执行。
4. `$^` - 表示上一个命令的最后一个参数。
5. `$_` - 表示当前的管道对象。
6. `$args` - 表示传递给脚本的所有参数的数组。
7. `$ConsoleFileName` - 表示当前正在执行的 PowerShell 会话或脚本的名称。
8. `$DebugPreference` - 确定如何响应调试信息。
9. `$Error` - 表示一个包含当前会话中所有错误的数组。
10. `$Event` - 表示当前事件对象。
11. `$EventArgs` - 表示当前事件参数的对象。
12. `$EventSubscriber` - 表示当前事件订阅的对象。
13. `$ExecutionContext` - 表示当前的执行环境。
14. `$false` - 表示布尔值假。
15. `$foreach` - 表示当前的循环变量。
16. `$HOME` - 表示当前用户的主目录。
17. `$Host` - 表示当前的宿主环境。
18. `$Input` - 表示从管道传入的对象。
19. `$LastExitCode` - 表示上一个执行的外部程序的退出代码。
20. `$Matches` - 表示当前正则表达式匹配的结果。
21. `$MyInvocation` - 表示当前脚本的调用信息。
22. `$NestedPromptLevel` - 表示当前嵌套提示级别。
23. `$null` - 表示空值。
24. `$PID` - 表示当前进程的 ID。
25. `$PROFILE` - 表示当前用户配置文件的路径。
26. `$ProgressPreference` - 确定如何显示进度条。
27. `$PSBoundParameters` - 表示当前命令的绑定参数。
28. `$PSCmdlet` - 表示当前的 cmdlet 对象。
29. `$PSCommandPath` - 表示当前脚本或 cmdlet 的路径。
30. `$PSCulture` - 表示当前的文化设置。
31. `$PSDebugContext` - 表示当前调试上下文。
32. `$PSItem` - 与 `$_` 相同，表示当前的管道对象。
33. `$PSSenderInfo` - 表示发送当前事件的会话的信息。
34. `$PSUICulture` - 表示当前的用户界面文化设置。
35. `$PWD` - 表示当前的工作目录。
36. `$ShellID` - 表示当前的 shell ID。
37. `$StackTrace` - 表示当前异常的堆栈跟踪。
38. `$Switch` - 表示当前的开关参数。
39. `$true` - 表示布尔值真。
40. `$VerbosePreference` - 确定如何响应详细信息。
41. `$WarningPreference` - 确定如何响应警告信息。

**引用：**

https://www.cnblogs.com/zhang-snail/p/17974605
