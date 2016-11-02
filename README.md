# myVim
该vim配置面向前端,linux window 通用
面向语言:
-----------
- javascript
- css
- html5
- php

安装:
-----------
- 克隆项目
```cmd
cd $HOME
git clone https://github.com/lamper000/.vim.git
```
- 创建vimrc文件

### windows
```cmd
cp .vim\vimrc .
rename vimrc _vimrc
```
### linux
```cmd
cp .vim/vimrc .
mv vimrc .vimrc
```
- 安装vundle管理工具
```cmd
cd $HOME
git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim
```
- 安装插件
```vim
BundleInstall
```

