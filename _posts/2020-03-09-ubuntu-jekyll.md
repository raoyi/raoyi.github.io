---
layout: post
title:  Ubuntu部署jekyll的方法
date:   2020-03-09
tags:   Ubuntu Jekyll
---

**step1. 先更新系统**

```
sudo apt update
sudo apt upgrade
```

**step2. 安装ruby**

```
sudo apt install ruby
sudo apt install ruby-dev
```

**step3. 更换Gems源**

```
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
```

**step4. 更新Gem源**

```
gem sources -u
```

**step5. 安装jekyll**

```
sudo gem install jekyll
```

**step6. 新建项目文件夹**

```
jekyll new myblog
```

**如果出现ERROR，用以下命令解决**

```
sudo gem install jekyll bundler
```

**step7. 运行**

```
cd myblog
jekyll serve
```

**step8. 浏览器查看**

```
http://localhost:4000
```

