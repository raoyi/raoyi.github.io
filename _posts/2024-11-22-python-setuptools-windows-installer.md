---
layout: post
title:  python setuptools创建Windows安装程序
date:   2024-11-22
tags:   Python
---

要使用 `setuptools` 创建 Windows 安装程序，你可以按照以下步骤操作：

### 1) 安装setuptools：

如果你还没有安装 `setuptools` ，可以通过 `pip` 安装：

```bash
pip install setuptools
```

### 2) 创建 setup.py 文件：

在你的Python项目的根目录下创建一个名为 `setup.py` 的文件。这个文件包含了项目的元数据和配置信息。例如：

```python
from setuptools import setup, find_packages

setup(
    name='your_package_name',
    version='0.1',
    packages=find_packages(),
    install_requires=[
        # 列出你的项目依赖的其他Python包
        'requests',
        'numpy',
    ],
    entry_points={
        'console_scripts': [
            'your_script_name=your_package.module:main_function',
        ],
    },
    # 其他元数据
    author='Your Name',
    description='A short description of your project',
    url='http://example.com',
)
```

这里的 `find_packages()` 会自动查找项目中所有的Python包（即包含 __init__.py 的目录）。修改 name, version, install_requires, 和entry_points 等字段以适应你的项目。

### 3) 使用setup.py打包：

在终端中运行以下命令来打包你的项目：

```bash
python setup.py sdist bdist_wheel
```

这条命令会生成两个主要的打包文件：

- dist/your_package_name-0.1.tar.gz（源码发行包）
- dist/your_package_name-0.1-py3-none-any.whl（可执行二进制包）

### 4) 创建Windows安装程序：

- 制作Windows下的安装包，可以使用 `bdist_wininst` 命令创建.exe安装文件：

```bash
python setup.py bdist_wininst
```

- 或者使用bdist_msi命令创建.msi安装文件：

```bash
python setup.py bdist_msi
```

这些命令会在dist目录下生成相应的安装程序文件。

### 5) 安装和分发：

你可以使用 `pip` 安装打包好的项目，或者将dist目录中的文件上传到PyPI，供其他人下载安装。

以上步骤将帮助你使用setuptools创建Windows安装程序。生成的 `.exe` 或 `.msi` 文件可以被用来在Windows系统上安装你的Python应用程序。

### [setuptools详解](https://www.cnblogs.com/xy-bot/p/16994119.html)