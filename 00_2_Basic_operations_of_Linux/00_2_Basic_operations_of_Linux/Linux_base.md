<center><font color=black size=7><B>生物信息学中的linux基础</B></center></font>

<center><font color=black>Author: YangZS</center></font>

<center><font color=black>Date: July 20, 2020</center></font>





## 目录

[TOC]



## 1.	生物信息学工作为什么要使用linux 



**Linux系统具有很多优势:**

- 去可视化：使用命令行模式、节省计算资源

- 文件和目录结构管理

- 安全、稳定、多线程

- 权限设置

- 适合处理大文本

...



## 2.	目录结构

```bash

/          #根目录，是系统最起始的目录，所有的文件都在根目录下面

/bin       #存放二进制可执行文件(如ls, cat, mkdir等)

/home     #家目录，存放各个用户的所有文件的根目录

/etc       #存放系统配置文件 一般刚开始接触linux的同学暂时不要去鼓捣

/root      #超级用户目录

/mnt      #系统管理员安装临时文件系统的安装点

```

## 3.	路径的表示方法

### 3.1.	路径有两种表示方法：绝对路径和相对路径

绝对路径： 从根目录“/”开始，并且使用“/”将各级目录分隔开

相对路径：目标目录相对于当前目录的位置

```bash
.   代表当前目录
..  代表上一级目录
-   代表前一个目录
~ 代表家目录（用户的个人主目录）
```



###3.2.	在进行文件批量操作过程中和文件查找过程中，通配符具有重要的作用

**通配符的规则**

**通配符用来匹配符合条件的文件名，通配符是完全匹配**

```bash
符号           含义                                      举例
*          代表任意（0到多个字符）          ls  *fastq  #查找以fastq结尾的所有文件
                                         ls test* #查找以test开头的所有文件
？         代表文件中任意一个字符           ls test?.sh #查找test开头的 .sh结尾的文件
[]        查找[]范围内的任意一个字符        [abc]匹配abc中的任意一个
                                            [a-c] 匹配a-c中的任意一个
{}        命令区块组合或者内容序列          mkdie 2016_{a..z} #创建文件2016_a,2016_b......2016_z
```

##  4.	Linux shell 常用命令

### 4.1.	root 权限获取

```bash

su		切换当前用户身份到其他身份，直接使用时为
		su	切换到root用户
		su	biotest 切换到biotest用户
sudo	展示获取超级用户权限执行命令 
			mv test.txt /etc/	#mv: cannot create regular file '/etc/test.txt': Permission denied
		sudo	 mv test.txt /etc/ 		#OK

```

### 4.2.	文件查看与查找

```bash
which	查找并显示给定命令的绝对路径
locate	查找文件或目录
find	在指定目录下在找文件
whereis	查找文件的路径
diff	比较给定两文件的不同
tail	显示指定文件末尾若干行
head	显示指定文件开头若干行
less	分屏上下翻页浏览文件内容
more	显示文件内容，每次一屏
```

### 4.3.	文件处理

```bash

touch	创建新文件
cat	查看或者连接文件,  
	-A 显示所有字符，包括特殊字符
cut	按照制定条件，从文件中的每一行提取字段  
		-d：指定分隔符，选取字段时，需要选定指定的分隔符
		-f：与-d一起使用，指定显示的区域
ln	为文件创建链链接
		ln   file  lnk硬连接复制源文件file
		ln  -s  file  lnk	软连接，类似于win下快捷方式，指向源文件file
vim	纯文本编辑器
		a	insert插入模式 在光标位置后一位插入
		A	insert插入模式，	在行末插入，光标自动跳转到行尾
		d	删除光标行
		i	insert插入模式，在光标位置前一位插入 
		按键 Esc 退出编辑模式 进入命令模式
```

###4.4.	文件操作与备份

```bash

mkdir	创建目录
		mkdir -p  mk/dir/ 创建目录dir/，当其父目录mk不存在时自动创建父目录
rm	删除指定文件或目录
	  -r 删除目录， rm -r dir
pwd	显示当前工作目录
	   pwd  -P  当前工作目录的绝对路径（真实路径）， 例如在链接的目录中。
cd	切换目录
ls	显示目录内容列表
mv	移动文件或者重命名文件
cp	将源文件或目录或目标文件或目标目录中
dos2unix	将DOS格式文本转换为Unix格式
chmod	变更文件或目录权限
wc	统计文字的字节数、字数和行数
split	分割任意大小的文件
grep 文本搜索工具
sort	文件排序并输出
gzip	压缩文件
tar	Linux下归档工具
zcat	显示压缩包中的文件内容

```

###  4.5.	系统维护与管理

```bash
date	显示系统时间与日期
time	统计给定命令所花费的总时间
free	显示内存使用情况
top	显示或管理执行中的程序
kill	删除执行中的程序或任务
echo		输出指定的字符串或变量
history	显示历史命令
df	显示磁盘相关的信息
du	显示文件和目录的磁盘使用情况
```

### 4.6.	其他常用命令：重定向和管道

```bash
>   将内容重定向到新的文件中 若指定文件存在则重写该文件。
cat test.txt > cat_out.txt

>>	将文件追加到末尾 若指定文件存在则在该文件末尾追加内容
cat test.txt >> cat_out.txt
```

