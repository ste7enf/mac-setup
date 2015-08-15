## iTerm 2 配置

优秀的Terminal，开发必备！官网下载 [iTerm2](http://iterm2.com/)。

### 基本配置

按`Command + ,`打开偏好设定窗口： `Profiles / Window / Settings for New Windows`中的Style改成 Left of Screen 让它在屏幕左侧显示（在宽屏显示器上效果不错） 勾选`Key / Hotkey`中的`Show/hide iTerm2 with a system-wide hotkey`，然后设定一个热键。比如 `Command + .`。 现在按Command + .就可以随时调出或者隐藏iTerm2。   

**主题：**
[Solarized](http://ethanschoonover.com/solarized)

可以说是目前网络上最流行的配色解决方案，其优美的配色和众多软件的支持，成就了她现在的火爆。我们这里就使用它来进行iTerm2的配色 下载，解压。

打开iTerm2的偏好设定，`Profiles / Colors`，最下面的`Load Presets ... / Import...` 直接加载`iterm2-colors-solarized / Solarized Dark.itermcolors`配色方案就可以了，这时候可以看到。看到效果了。

### zsh

系统自带了 4.0 版的 zsh，但我们可以用 brew install 安装最新的 5.X。

    brew install zsh
    sudo rm /bin/zsh    # 替换系统自带 zsh
    sudo ln -s `brew --prefix zsh`/bin/zsh /bin/zsh
    chsh -s /bin/zsh  	# 切换系统当前用户的默认 shell 为 zsh
	
安装完毕，Command + W 关闭 iTerm2 当前窗口，然后按 Command + . 重新打开，此时 shell 已经换成 zsh 了。

### oh-my-zsh

这是一套十分强大的 zsh 配置方案。

	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

下载[这个字体](https://gist.github.com/qrush/1595572/raw/417a3fa36e35ca91d6d23ac961071094c26e5fad/Menlo-Powerline.otf)补丁并安装，给系统中的 Menlo 字体进行增补。

打开 iTerm2 的偏好设定，Profiles / Text，把 Regular Font 和 Non-ASCII Font 都换成 Menlo，大小为 14pt Regular。

编辑 `~/.zshrc` 文件：

	ZSH_THEME="agnoster"    	  # "jtriley" 主题也不错

	DEFAULT_USER="username"       # 增加这一项，可以隐藏掉路径前面那串用户名

	plugins=(git brew node npm)   # 自己按需把要用的 plugin 写上
其中插件可以看[这里](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins)。

另外，建议把末尾的 `export PATH` 稍微调整一下，比如 Homebrew 就建议 `/usr/local/bin` 应该优先于 `/usr/bin`；另外也可以自己加上比如 Ruby Gems 目录 /usr/local/opt/ruby/bin、Node.js NPM 目录 ~/bin 等。

	export PATH=/usr/local/bin:/usr/local/sbin/:$HOME/bin:$PATH

关于 Homebrew 的路径，比如 zsh 这个包可以通过 `brew --prefix zsh` 知道它的目录是 `/usr/local/opt/zsh`;  
关于这些链接：

	ll /usr/local/opt

	/usr/local/opt/zsh 目录 -> /usr/local/Cellar/zsh/版本号 目录
	/usr/local/bin/zsh 文件 -> /usr/local/Cellar/zsh/版本号/bin/zsh 文件
	
所以就有了上面那条 chsh -s 命令的写法。

	source .zshrc 
立即生效。
### ssh配置
在Profile中配置ssh连接:`General / Command` 

	ssh -A -p 22 user@xx.xx.xx.xx
	
**记住密码配置**：安装 [sshpass](http://sourceforge.net/projects/sshpass/?source=typ_redirect) 

下载后，执行

    ./configure
    make 
    make install    
更新 command，即可自动加载pwd文件登陆

    sshpass -f /Users/ste7en/bak/logpwd ssh -A -p 22 user@xx.xx.xx.xx

password 文件： `/Users/ste7enf/bak/logpwd`

iTerm 配置完成~
