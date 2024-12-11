---
layout: post
title:  python 程序运行时禁止Windows系统睡眠
date:   2024-12-11
tags:   Python Windows
---

## 方法一：

```
import tkinter as tk
import ctypes
from ctypes import wintypes

# 定义ES_CONTINUOUS和ES_SYSTEM_REQUIRED标志
ES_CONTINUOUS = 0x80000000
ES_SYSTEM_REQUIRED = 0x00000001

# 设置系统不进入睡眠模式
def prevent_sleep():
    ESFlags = ES_CONTINUOUS | ES_SYSTEM_REQUIRED
    ctypes.windll.kernel32.SetThreadExecutionState(ESFlags, ESFlags)

# 重置系统电源管理设置，允许系统睡眠
def allow_sleep():
    ctypes.windll.kernel32.SetThreadExecutionState(0, 0)

# 创建Tkinter窗口
root = tk.Tk()
root.title("Prevent Sleep Example")

# 当窗口打开时防止系统睡眠
prevent_sleep()

# 窗口关闭时允许系统睡眠
def on_closing():
    allow_sleep()
    root.destroy()

root.protocol("WM_DELETE_WINDOW", on_closing)

# 添加一个按钮，点击后关闭窗口
button = tk.Button(root, text="Close Window", command=root.destroy)
button.pack(pady=20)

root.mainloop()
```

 **说明：** 

在这个示例中，我们使用了 `ctypes.windll.kernel32.SetThreadExecutionState` 函数来设置系统电源管理。`ES_CONTINUOUS` 和 `ES_SYSTEM_REQUIRED` 是两个标志，它们告诉系统应用程序正在运行并且需要系统保持运行状态。

- `ES_CONTINUOUS`：告诉系统应用程序正在持续运行，不应该进入睡眠模式。
- `ES_SYSTEM_REQUIRED`：告诉系统应用程序需要系统保持运行状态。

这段代码同样只能在 Windows 操作系统上运行，因为它依赖于 Windows 特定的 API。在其他操作系统上，你需要寻找其他方法来控制电源管理设置。

在 Windows API 中，`ES_CONTINUOUS` 和 `ES_SYSTEM_REQUIRED` 是两个用于 `SetThreadExecutionState` 函数的参数值，它们用来控制系统电源管理的行为。以下是这两个参数可以取的值：

- `ES_CONTINUOUS (0x80000000)`

`ES_CONTINUOUS` 是一个标志，当与 `SetThreadExecutionState` 函数一起使用时，它会通知系统调用线程正在持续运行，并且系统不应该进入睡眠模式。这个标志通常与 `ES_SYSTEM_REQUIRED` 或其他 `ES_*` 标志一起使用，以确保系统保持唤醒状态。

- `ES_SYSTEM_REQUIRED (0x00000001)`

`ES_SYSTEM_REQUIRED` 是一个标志，它告诉系统一个线程需要系统保持唤醒状态，因此系统不应该进入睡眠模式。当线程不再需要系统保持唤醒状态时，应该再次调用 `SetThreadExecutionState` 函数，传入 `ES_CONTINUOUS` 标志来清除 `ES_SYSTEM_REQUIRED` 标志。

其他 `ES_*` 标志

除了 `ES_CONTINUOUS` 和 `ES_SYSTEM_REQUIRED`，还有其他一些 `ES_*` 标志可以与 `SetThreadExecutionState` 函数一起使用：

- `ES_DISPLAY_REQUIRED (0x00000002)`：通知系统显示设备需要保持开启状态。
- `ES_USER_PRESENT (0x00000004)`：通知系统用户已经回到机器前，可以用来重置系统空闲计时器。
- `ES_AWAYMODE_REQUIRED (0x00000040)`：告诉系统应用程序需要“离开模式”功能，这允许系统保持唤醒状态，但降低性能以节省电池。
- `ES_AWAYMODE_SUPPORTED (0x00000080)`：通知系统应用程序支持“离开模式”。

这些标志可以组合使用，以满足应用程序对系统电源管理的不同需求。例如，如果你想要系统保持唤醒状态并且显示设备也需要保持开启，你可以使用 `ES_CONTINUOUS | ES_SYSTEM_REQUIRED | ES_DISPLAY_REQUIRED` 作为 `SetThreadExecutionState` 函数的参数。

## 方法二：

```
# pip install pywin32
import tkinter as tk
import win32api
import win32con

# 设置系统不进入睡眠模式
def prevent_sleep():
    win32api.SetThreadExecutionState(win32con.ES_CONTINUOUS | win32con.ES_SYSTEM_REQUIRED)

# 重置系统电源管理设置，允许系统睡眠
def allow_sleep():
    win32api.SetThreadExecutionState(win32con.ES_CONTINUOUS)

# 创建Tkinter窗口
root = tk.Tk()
root.title("Prevent Sleep Example")

# 当窗口打开时防止系统睡眠
prevent_sleep()

# 窗口关闭时允许系统睡眠
def on_closing():
    allow_sleep()
    root.destroy()

root.protocol("WM_DELETE_WINDOW", on_closing)

# 添加一个按钮，点击后关闭窗口
button = tk.Button(root, text="Close Window", command=root.destroy)
button.pack(pady=20)

root.mainloop()
```

 **说明：** 

这段代码中，`prevent_sleep` 函数通过调用 `win32api.SetThreadExecutionState` 并传递 `ES_CONTINUOUS` 和 `ES_SYSTEM_REQUIRED` 标志来防止系统自动进入睡眠模式。`ES_CONTINUOUS` 标志告诉系统应用程序正在运行，而 `ES_SYSTEM_REQUIRED` 标志表示系统是必需的，因此不应该进入睡眠模式。

`allow_sleep` 函数在窗口关闭时被调用，它将系统电源管理设置重置为默认状态，允许系统根据需要进入睡眠模式。

请注意，这段代码只能在 Windows 操作系统上运行，因为它依赖于 Windows 特定的 API。在其他操作系统上，你需要寻找其他方法来控制电源管理设置。
