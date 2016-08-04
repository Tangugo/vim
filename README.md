Linux下Vim的配置文件

### 安装vim插件管理工具Vundle

#### 1、创建文件夹 
> mkdir -p ~/.vim/bundle

#### 2、克隆Vundle到bundle目录下 
> git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


### 创建vimrc（vim的配置文件）
可以直接克隆我的vim配置文件到你的本地
> git clone git@github.com:Tangugo/vim.git

把 `.vimrc` 配置文件拷贝到 `~/`目录下
> cp vim/.vimrc ~/

**注：前面带点`.`的文件是隐藏文件，需 `ls -la` 才能查看到**

vim配置文件一般分为以下四部分：

- 加载vim的相关插件([vim插件大全](http://vim-scripts.org/vim/scripts.html))
- vim的常规设置
- vim插件的设置
- 键盘中一些键的功能重新映射其他键或组合键上(例如`Esc`退出插入模式映射到`jj`组合键)

### 安装插件让`.vimrc`配置文件生效
按以下步骤操作

> cd ~/.vim/bundle
> vim
> :BundleInstall

安装插件需要一定的时间，跟网速有关，喝杯茶等待

### 安装完后我的补全遇到如下问题：
在写代码时，每当输入 `.` 就提示 `ConnectionError` 错误提示(如输入: `os.`)，到 `/tmp/ycm_temp` 目录下查看日志文件，提示如下错误：

``` python
Traceback (most recent call last):
  File "/home/zhu/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/JediHTTP/jedihttp.py", line 23, in <module>
    from waitress import serve
ImportError: No module named waitress

```
发现报错源，顺藤摸瓜，于是到[PyPi](https://pypi.python.org/pypi)(*几乎所有python的第三方库在此处都能找到*)查找[waitress](https://pypi.python.org/pypi/waitress/1.0a2)模块，下载安装后，完美解决了代码补全出现的问题

waitress安装：
> tar -zxvf waitress-1.0a2.tar.gz

> cd waitress-1.0a2

> python setup.py install    # 注：非root用户需在命令前加上 `sudo`
