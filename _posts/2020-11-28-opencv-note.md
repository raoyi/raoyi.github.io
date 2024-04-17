---
layout: post
title:  OpenCV笔记(Python)
date:   2020-11-28
tags:   Python OpenCV
---

官方文档（英文）：https://docs.opencv.org/

安装
```
pip install opencv-python
```
检验是否安装成功
```
import cv2
cv2.__version__
```
读入图像 `cv2.imread()`

参数一，图片路径

参数二，告诉函数应该如何读取这幅图片
- `cv2.IMREAD_COLOR`：读入一副彩色图像.图像的透明度会被忽略,这是默认参数
- `cv2.IMREAD_GRAYSCALE`：以灰度模式读入图像
- `cv2.IMREAD_UNCHANGED`：读入一幅图像,并且包括图像的 alpha
```
import cv2
img = cv2.imread('messi5.jpg',0)
```
**警告**：如果图像的路径是错的，也不会有报错，但是当使用命令 `print(img)` 时得到的结果是 None

显示图像 `cv2.imshow()`

参数一，窗口标题。窗口尺寸会自动调整

参数二，已读取的图像
```
cv2.imshow('image',img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```
- `cv2.waitKey()`：键盘绑定函数
- `cv2.destroyAllWindows()`：删除程序建立的所有窗口
- `cv2.destroyWindow()`：删除指定title的窗口，例：`cv2.destroyWindow('WindowTitle')`
