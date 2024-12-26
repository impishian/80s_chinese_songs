# 1980s chinese songs

1980年代中国大陆影视流行歌曲

* 用 Lilypond 排版
* 简谱形式
* 简单吉他和弦编配

# Notes

### lilypond 如何排简谱

lilypond 本来只能排五线谱，但是通过 Lisp 方言之一的 scheme 语言（实际采用的是 GNU Guile 的实现），至少有两人写了 scheme 扩展代码，增加了可以排简谱的功能。

Silas S. Brown是最早提供简谱扩展实现的。但生成的简谱有些问题（比如，https://ssb22.user.srcf.net/mwrhome/jianpu-ly.html 右上角效果图的 3 5 下面的双横线显示位置不对）。

Paul Morris 和 David Zhang 等人的 http://lilypond.1069038.n5.nabble.com/Jianpu-Notation-tp174685p175857.html ，是另一个比较好的简谱扩展实现。此仓库里的 jianpy.ly 就是他们的版本(jianpu10a.ly)，尽管该版本还有些小bug (比如，高音和低音的圆点，显示还不够完美)，但已是现在 lilypond 排简谱的最佳实现。


### 快速排 lilypond 音名

熟悉简谱者，可用 https://github.com/ssb22/jianpu-ly.git  这个 python 辅助工具，将简谱编写的临时文件快速转为音名描述的 lilypond 文件。这个辅助工具就是上面提到的 Silas S. Brown 写的。生成的 lilyond 文件，只需将旋律那部分音名序列复制出来，其他部分不要，因为其排版效果不够好。

但 1 - - - 会被转为 1 1 1 1 ，这样的情况，可手工再编辑微调 lilypond 文件。 

本仓库里所有的歌曲的 melody 部分，都是用该工具，辅助生成复制出来再微调得到的。

### Lilypond 下载链接 ### 

https://gitlab.com/lilypond/lilypond/-/releases

- `macOS (apple aarch64芯片):` lilypond-2.25.22-darwin-arm64.tar.gz
  
- `macOS (intel x86_64 芯片):` lilypond-2.25.22-darwin-x86_64.tar.gz
  
- `Linux (x86_64 芯片):` lilypond-2.25.22-linux-x86_64.tar.gz
  
- `Windows:` lilypond-2.25.22-mingw-x86_64.zip

~~### macOS Big Sur 通过 docker 使用 Lilypond:~~

~~1. Frescobaldi (lilypond) 在 macOS Big Sur 下暂无可用的版本，只好采用 docker 运行 lilypond。要先装 docker，~~

~~2. 运行以下命令，自己构建 docker 镜像 （不再使用 https://hub.docker.com/r/asbjoree/lilypond 这个镜像。因为太大了，大概 1.8GB，自己构建的镜像大概 200MB）~~

   ~~docker build -t 80s_chinese_songs_lilypond:1.0 .~~
   
~~3. 编写名为 lily 的 shell 脚本~~

~~>  $ vim /usr/local/bin/lily~~
~~>~~   
~~>    #!/bin/bash~~
~~>~~
~~>    /usr/local/bin/docker run --rm -v $(pwd):/root -w /root 80s_chinese_songs_lilypond:1.0  lilypond "$@"~~
~~>~~
~~>  $ chmod +x /usr/local/bin/lily~~

~~4. 使用方法：(1) vim hello.ly  (2)  lily hello.ly  (3) open hello.pdf~~
