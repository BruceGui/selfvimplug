# VIM 插件管理系统及配置
> 自己使用的VIM插件管理系统和配置文件，方便在各个平台实现同步更新。参考链接[VIM-PLUG](https://github.com/junegunn/vim-plug)


## 基本安装

```bash
git clone git@github.com:BruceGui/selfvimplug.git
cd selfvimplug
cp -r autoload ~/.vim/
cp .vimrc ~/
```

然后打开VIM，使用:PlugInstall安装配置在.vimrc文件中的插件。
