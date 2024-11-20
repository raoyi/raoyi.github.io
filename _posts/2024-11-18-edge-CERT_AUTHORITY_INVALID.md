---
layout: post
title:  如何在 Microsoft Edge 中绕过证书校验错误
date:   2024-11-18
tags:   edge
---

针对访问有些网站出现 `NET::ERR_CERT_AUTHORITY_INVALID` 报错的解决方法：

1. F12 打开 “开发工具”
2. 在 “控制台” 中输入如下JavaScript指令：
```
sendCommand(SecurityInterstitialCommandId.CMD_PROCEED)
```
3. 刷新页面
