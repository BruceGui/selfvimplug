# VIM 插件管理系统及配置
> 自己使用的VIM插件管理系统和配置文件，方便在各个平台实现同步更新。


## 手动安装

```bash
<<<<<<< HEAD
git clone git@github.com:BruceGui/vimconfplug.git
cd vimconfplug
cp -r autoload ~/.vim/
=======
git clone git@github.com:BruceGui/selfvimplug.git
cd selfvimplug
cp -r autoload/ ~/.vim/
>>>>>>> 6b36c308a38223b875addb75f9e9316676588e86
cp .vimrc ~/
```

然后打开VIM，使用:PlugInstall安装配置在.vimrc文件中的插件。

## 参考链接
[VIM-PLUG](https://github.com/junegunn/vim-plug)

[OH-MY-VIM](https://github.com/liangxianzhe/oh-my-vim)

[OH-MY-ZSH](https://github.com/robbyrussell/oh-my-zsh)
