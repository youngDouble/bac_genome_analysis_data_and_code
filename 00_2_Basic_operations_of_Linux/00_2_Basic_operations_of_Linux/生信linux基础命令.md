<center><font color=black size=6><b>生信linux基础命令</b></center></font>

<center><font color=black>Author: YoungZS</center></font>

<center><font color=black>Date: 2021/2/9 </center></font>

[TOC]

## **1、cd**

cd：Change directory

修改工作目录，cd和ls应该是使用最多的两个命令，尤其是对于Linux目录结构不熟的用户。

```
cd /  #进入根目录
cd -  #返回上次的目录
cd  #返回home目录
cd ~ #返回home目录
cd ../ # 返回上一级目录
```

## **2、ls**

ls：List files

```
-a  列出包括.a开头的隐藏文件的所有文件
-A  通-a，但不列出"."和".."
-l  列出文件的详细信息
-c  根据ctime排序显示
-t  根据文件修改时间排序
---color[=WHEN] 用色彩辨别文件类型 WHEN 可以是'never'、'always'或'auto'其中之一
```

## **3、pwd**

print working directory

```
$pwd
/home/wangtong
```

## **4、sh**

script
运行脚本的命令，脚本是包含很多命令的一个文件，sh 这个文件，就可以之和运行，例如目录下有个多个sh文件，就可以一次运行。

```bash
$ sh a1.index.sh;
sh a2.fasqc.sh
```

## **5、cp**

cp: Copy file
拷贝并粘贴文件
-b  覆盖前做备份
-f  如存在不询问而强制覆盖
-i  如存在则询问是否覆盖
-u  较新才覆盖
-t  将多个源文件移动到统一目录下，目录参数在前，文件参数在后

```bash
cp a1.index.sh a2.index.sh
```

## **6、mv**

mv: Move file
移动文件，相当于windows下的剪切粘贴，如果剪切粘贴到同一目录下，则为重命令。
-b  覆盖前做备份
-f  如存在不询问而强制覆盖
-i  如存在则询问是否覆盖
-u  较新才覆盖
-t  将多个源文件移动到统一目录下，目录参数在前，文件参数在后

```
mv a1.index.sh ../
```

## **7、rm**

rm: Remove file
删除文件
-r  删除文件夹
-f  删除不提示
-i  删除提示
-v  详细显示进行步骤
注意！命令行模式下删除文件不可恢复。

```
rm -rf *.fna  #删除目录下所有以.fna结尾的文件
```

## **8、ln**

ln: Link files
创建连接文件，包括软连接和硬链接，一般软连接比较常用，相当于windows下的快捷方式。
-s  建立软连接  
-v  显示详细的处理过程

```
ln -s /ifs1/Example ./ #为/ifs1/Example目录在当前目录下创建一个快捷方式
```

## **9、vim**

vim是Linux系统自带的文本编辑器，可以理解成为windows系统下的word软件。

:w filename 将文章以指定的文件名保存起来  
:wq 保存并退出
:q! 不保存而强制退出
命令行模式功能键
1）插入模式
 按「i」切换进入插入模式「insert mode」，按"i"进入插入模式后是从光标当前位置开始输入文件；
 按「a」进入插入模式后，是从目前光标所在位置的下一个位置开始输入文字；
 按「o」进入插入模式后，是插入新的一行，从行首开始输入文字。

2）从插入模式切换为命令行模式
按「ESC」键。
3）移动光标
　　vi可以直接用键盘上的光标来上下左右移动，但正规的vi是用小写英文字母「h」、「j」、「k」、「l」，分别控制光标左、下、上、右移一格。
　　按「ctrl」+「b」：屏幕往"后"移动一页。
　　按「ctrl」+「f」：屏幕往"前"移动一页。
　　按「ctrl」+「u」：屏幕往"后"移动半页。
　　按「ctrl」+「d」：屏幕往"前"移动半页。
　　按数字「0」：移到文章的开头。
　　按「G」：移动到文章的最后。
　　按「$」：移动到光标所在行的"行尾"。
　　按「^」：移动到光标所在行的"行首"
　　按「w」：光标跳到下个字的开头
　　按「e」：光标跳到下个字的字尾
　　按「b」：光标回到上个字的开头
　　按「#l」：光标移到该行的第#个位置，如：5l,56l。

4）删除文字
　　「x」：每按一次，删除光标所在位置的"后面"一个字符。
　　「#x」：例如，「6x」表示删除光标所在位置的"后面"6个字符。
　　「X」：大写的X，每按一次，删除光标所在位置的"前面"一个字符。
　　「#X」：例如，「20X」表示删除光标所在位置的"前面"20个字符。
　　「dd」：删除光标所在行。
　　「#dd」：从光标所在行开始删除#行

5）复制
　　「yw」：将光标所在之处到字尾的字符复制到缓冲区中。
　　「#yw」：复制#个字到缓冲区
　　「yy」：复制光标所在行到缓冲区。
　　「#yy」：例如，「6yy」表示拷贝从光标所在的该行"往下数"6行文字。
　　「p」：将缓冲区内的字符贴到光标所在位置。注意：所有与"y"有关的复制命令都必须与"p"配合才能完成复制与粘贴功能。

6）替换
　　「r」：替换光标所在处的字符。
　　「R」：替换光标所到之处的字符，直到按下「ESC」键为止。

7）回复上一次操作
　　「u」：如果您误执行一个命令，可以马上按下「u」，回到上一个操作。按多次"u"可以执行多次回复。

8）更改
　　「cw」：更改光标所在处的字到字尾处
　　「c#w」：例如，「c3w」表示更改3个字

9）跳至指定的行
　　「ctrl」+「g」列出光标所在行的行号。
　　「#G」：例如，「15G」，表示移动光标至文章的第15行行首。

## **10、mkdir**

mkdir：Make directory
创建文件夹
-p  递归创建目录，若父目录不存在则依次创建
-m  自定义创建目录的权限
-v  显示创建目录的详细信息

```
mkdir rnaseq #创建一个名为rnaseq的目录
```

## **11、cat**

cat: concatenate 连接
cat的一个作用是查看文件，一般是比较小的文件，行数小于一个屏幕，最多不要超过两个屏幕，否则会刷屏；
cat另一个作用是合并多个文件，一般配合重定向合并为一个新文件或者将一个文件内容追加到另一个文件结尾。

```
$ cat a1.index.sh 
bwa index -p Homo_sapiens_assembly38 -a bwtsw Homo_sapiens_assembly38.fasta
```

合并文件

```
cat a1.txt a2.txt >all.txt
```

## **12、less / more**

less和more都是文件查看工具，但是less功能更多一些，在windows系统下打开一个10G的文件比较困难，但是在Linux下非常方便，less可以打开非常大的文件，压缩格式也可以直接打开。
-m  显示类似于more命令的百分比
-N  显示行号
-S  格式化显示

```
$ less -S nt.tar.gz
```

## **13、head / tail**

这两个命令比较简单，只是取一个文件的头部和尾部多少行，默认10行，可以加-n进行设置，利用管道可以取文件中间行。

```
#取文件第21~40行
$ head -40 a.txt | tail -n 20
```

## **14、g(un)zip/ b(un)zip2**

gzip和bzip2是文件压缩工具，默认直接对源文件进行处理，压缩比率在2/3左右，都可以进行设置。
加上un，为unpack的意思，表示解压缩。

```
$ gzip a.txt
$ gunzip a.txt.gz
```

## **15、tar**

tar：Tape archive （磁带档案）
tar是一个比较复杂的命令，tar主要用于打包，由于tar能调用gzip或者bzip2进行压缩，而打包和压缩经常如windows系统一样合并为一个过程，新手经常将二者混淆，
 -c  建立打包档案，可搭配 -v 来察看过程中被打包的档名(filename)
 -t  察看打包档案的内容含有哪些档名，重点在察看『档名』就是了；
 -x  解打包或解压缩的功能，可以搭配 -C (大写) 在特定目录解开
辅选项：
 -j  透过 bzip2 的支持进行压缩/解压缩：此时档名最好为 *.tar.bz2
 -z  透过 gzip 的支持进行压缩/解压缩：此时档名最好为 *.tar.gz
 -v  在压缩/解压缩的过程中，将正在处理的文件名显示出来！
 -f filename -f 后面要立刻接要被处理的档名！
对于初学者，记住c是creat，创建，x是解包，z对应gzip，j对应bzip2即可，所以常用的命令如下：

```
$ tar -jcvf filename.tar.bz2 A B C #打包压缩为bz2结尾文件
$ tar -jxvf filename.tar.bz2 # 解压缩.tar.bz2结尾文件

$ tar -zcvf filename.tar.gz A B C #打包压缩为gz结尾文件
$ tar -zxvf filename.tar.gz # 解压缩.tar.gz 结尾文件
```

## **16、wc**

wc = Word Count
统计一个文件中，行数，单词数，字符数
-l filename 报告行数
-c filename 报告字节数
-m filename 报告字符数
-w filename 报告单词数

## **17、sort**

排序，默认按第一列排序，可以通过-k进行设置；默认排序规则为按ASCII码排序，可以通过-n进行修改；-r取相反方向；
-n  依照数值的大小排序。
-o  将排序后的结果存入指定的文件。
-r  以相反的顺序来排序。
-t  指定排序时所用的栏位分隔字符。
-k  选择以哪个区间进行排序。

## **18、grep**

文本搜索工具，类似于正则表达式搜索，可以在一个大的文件中快速搜索到满足一定规则的内容。

```
#案例一：统计fasta文件中序列的条数；
grep -c ">"  gene.ffn
#案例二：输出满足条件的序列；
grep -A 2 "3 gi 29732 34486" lastz.axt
#案例三：筛选出不满足条件的内容；
ps -fx | grep -v "S"
```

## **19、sed**

sed = Stream Editor
流处理器，sed有非常强大的功能.

```
#案例一：输出固定的行
sed -n '1307p'  seq.fna   #输出文件第1307行；
sed -n '100,200' seq.fna  #输出文件第100到200行；

#案例二：替换操作
sed -e 's/gi/GI/' seq.fna  #将文件中gi全部替换为大写GI；
sed -i 's/gi/GI/g' seq.fna   #在原文件上进行替换，并且进行全部替换；
sed -i.bak 's#GI#gi#' seq.fna  #在原文件上进行替换，并进行备份；
sed -e 's/gi/GI/2；s/ref/REF/2' seq.fna   #只将第二次出现的gi和ref进行替换；
sed -f sed.list cds.list    #根据文件中的模式进行替换，可同时进行多条件替换；
sed -n 's/gi/GI/p' seq.fna  #打印发生替换的行；

#案例三：删除空白行；
sed -e '/^\s*$/d'  seq.fna  #删除文件中的空白行；

#案例四：行寻址
sed -n '/ref/p' seq.fna   #输出文件中包含ref关键字的行；
sed  '100,2000s/GI/gi/g' seq.fa  #则只替换100行到2000行的内容；
sed  '100,2000！s/GI/gi/g' seq.fa  #加感叹号取反，在这个范围之外的执行操作；

#案例五：删除操作
sed -e '/>/d' seq.fna #删除包含ref的行；
sed -e 's/:.*//g' seq.fna   #删除冒号之后的所有内容；

#案例六：对应替换，类似于tr的功能
sed -e 'y/ATCG/atcg/' seq.fna  #修改大小写
sed -e '/>/!y/ATCG/atcg/' seq.fna  #DNA序列反向互补配对，并修改大小写
```

## **20、awk**

awk也是非常强大的文本处理工具，awk本身也是一门编程语言；

```
#案例1：输出一个列表任意行；
awk '{print $1}' blast_m8.out  #输出blast m8 格式结果的第一行；
awk -F ":" '{print $1,$NF}' passwd.list   #通过-F修改默认分隔符为冒号，输出第一行与最后一行；

#案例2：格式转换
awk '{print"@" $1"\n"$10"\n""+\n"$11""}' all.sam  #将短序列比对上的reads输出出来，生成fastq文件；

#案例3：过滤blast结果
awk ’{if ($3>=80 && $4>=100) print $0}'  blast_m8.out  #过滤blast比对结果，将identity 大于80，并且比对长度大于100bp的结果输出；

#案例4：比较
awk '$8>$10' input.txt #输出第8列大于第10列的行。

#案例5：匹配输出
awk '$0~ /wang/{print $0}' passwd.list   #利用正则表达式，将秘密表中姓wang的账户都输出出来；

#案例6：格式化输出
awk 'BEGIN{print "The Program Begin\n"}{if ($3>=80 && $4>=100) print $0}END{print " The Program End\n"}' input.txt  #利用BEGIN和END关键字生成报告；

#案例7：修改字段和记录分隔符
awk 'BEGIN{OFS="\t"}{print $2,$4,$5}' input.txt   #在BEGIN中设定字段分隔符和记录分隔符；

#案例8：awk编程计算
awk '{x+=$3}END{print x/NR}' input.txt   #计算第三列的平均值，最后在END将其输出出来。

#案例9：awk编程比较大小
awk   'BEGIN { max=100 ;print "max=" max} {max=($1 >max ?$1:max); print $1,"Now max is "max}' input.txt  #取得文件最后一个域的最大值。 

#案例10：awk编程求和
awk '{print $0,$3+$4}' input.txt  #计算第3列和第4列的和。

#案例11：输出固定行内容
awk 'NR>=20&&NR<=80' input.txt  #输出第20到第80行内容。

#案例12：合并文件
awk 'BEGIN{while((getline<"file1")>0)l[$1]=$0}$1 in l{print $0"\t"l[$1]}' file2  #将两个文件按列合并起来，类似jion命令的功能。

#案例13：去重复
awk '!($0 in a) {a[$0];print}' input.txt  # 打印不重复的行，类似uniq的功能;
awk '!($2 in l){print;l[$2]=1}' input.txt #计算第二列内容非冗余的次数，类似于uniq的功能;

#案例14：统计字符
awk '{for(i=1;i!=NF;++i)c[$i]++}END{for (x in c) print x,c[x]}' input.txt 计算每个字符出现的次数，类似wc的功能。

#案例15：替换
awk '{sub(/test/, "no", $0);print}' input.txt 进行替换，类似sed的功能，

#案例16：fastq转换为fasta
awk '{getline seq;getline plus;getline qual;sub("@",">",$0);print $0 "\n"seq}'  test.fastq；
```



## **21、df**

df: disk free
df用于查看磁盘消耗，显示磁盘可用空间数目信息及空间结点信息。一般加一个-h选项，然后接要查看的磁盘，默认所有磁盘。
-a  显示全部文件系统
-h  文件大小友好显示
-l  只显示本地文件系统
-i  显示inode信息
-T  显示文件系统类型

```
$ df -h 
Filesystem               Size  Used Avail Use% Mounted on
/dev/mapper/centos-root  5.5T  742G  4.7T  14% /
devtmpfs                 126G     0  126G   0% /dev
```

## **22、du**

du: Disk usage
df用于查看磁盘大小，du用于查看目录所占磁盘大小，一般也加-h选项
-h  方便阅读的方式
-s  只显示总和的大小

```
$ du -sh wgs/
27G    wgs/
```

## **23、find**

find顾名思义，主要用于查找文件。因为当文件越来越多的时候，由于Linux是文本界面，不方便可视化文件，这个时候就可以利用find快速找到需要的文件。find支持多种搜索方式。

1. 与时间有关的选项：共有 -atime, -ctime 与 -mtime 和-amin,-cmin与-mmin，以 -mtime 说明
2. 与使用者或组名有关的参数：
3. 与档案权限及名称有关的参数：
4. 额外可进行的动作：

## **24、which**

which 可执行文件名称 | 查看可执行文件的位置，在PATH变量指定的路径中查看系统命令是否存在及其位置

```
#案例一：搜索Data目录下以点fna结尾的文件；
find  ../Data -name *.fna

#案例二：搜索系统中最近5分钟内编辑过的文件；
find / -amin 5

#案例三：查找大于100M的文件；
find ./ -size 100M

案例四：按照文件类型搜索；
find  ./ -type 文件类型
c 的档案
d: 目录 
b: 区块装置档案 ，
p: 具名贮列
f: 一般档案
l: 符号连结
s: socket

#案例五：搜索文件，直接处理；
find ./temp/ -name *.fna -exec rm '{}' \;
```

## **25、top**

top可以动态显示系统进程使用情况，类似于windows系统的任务管理器。可以
显示当前系统正在执行的进程的相关信息，包括进程ID、内存占用率、CPU占用率等。

```
$ top
top - 21:57:57 up 64 days, 14:32,  4 users,  load average: 1.03, 1.03, 1.05
Tasks: 413 total,   2 running, 411 sleeping,   0 stopped,   0 zombie
%Cpu(s):  3.2 us,  0.1 sy,  0.0 ni, 96.7 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
KiB Mem : 26346684+total, 49366600 free, 10640988 used, 20345926+buff/cache
KiB Swap: 33554428 total, 31772892 free,  1781536 used. 24733774+avail Mem 

   PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND                                                  
316997 wangtong  20   0 6076392   5.7g    804 R  99.7  2.3   9074:52 dnaml                                                    
451916 root      20   0  162244   2620   1576 R   0.7  0.0   0:00.05 top                                                      
    19 root      rt   0       0      0      0 S   0.3  0.0   0:20.10 watchdog/2                                               
   754 root      20   0  159156  97984  97640 S   0.3  0.0  73:10.61 systemd-journal  
```

## **26、ps**

ps: process status
ps也是系统进程管理工具，与top不同的事，top可以动态显示，而ps则是静态显示，是某一时刻的快照，静态显示的好处是便于其他程序捕获结果，进行处理。
a  显示所有的进程
-a  显示同一终端下的所有程序
e  显示环境变量
f  显示进程间的关系
-H  显示树状结构
r  显示当前终端的程序
T  显示当前终端的所有程序
-au 显示更详细的信息
-aux   显示所有包含其他使用者的行程
-u  指定用户的所有进程

```
$ ps -aux
```

## **27、kill**

kill的作用是杀死进程，给定一个任务的ID号，可以通过top或者ps命令获得，例如当前有一个sleep进程，pid号为12000；通过kill -9可以强制杀死。

```
$ kill -9 12000
```

## **28、chmod**

chmod: Change mode
用于修改文件权限，Linux基础怒权限可以包括ugo模式以及421模式。

```
#原始权限
$ ll a1.index.sh 
-rwxr-xr-x. 1 root root 287 Oct 16 16:05 a1.index.sh
#421模式修改
$ chmod 644 a1.index.sh 
$ ll a1.index.sh 
-rw-r--r--. 1 root root 287 Oct 16 16:05 a1.index.sh
#ugo模式修改
$ chmod ug+x a1.index.sh 
$ ll a1.index.sh 
-rwxr-xr--. 1 root root 287 Oct 16 16:05 a1.index.sh
```

与之类似的还有chown与chgrp；
chown: Change owner
chgrp: Change group

## **29、passwd**

passwd 修改密码，Linux密码要求大写字母开头，包含字母与数字组合，不能过于简单。
-l  使密码失效
-u  与-l相对，用户解锁
-S  列出登陆用户passwd文件内的相关参数
-n  后面接天数，shadow 的第 4 字段，多久不可修改密码天数
-x  后面接天数，shadow 的第 5 字段，多久内必须要更动密码
-w  后面接天数，shadow 的第 6 字段，密码过期前的警告天数
-i  后面接『日期』，shadow 的第 7 字段，密码失效日期

```
$ passwd
Changing password for user wangtong.
Changing password for wangtong.
(current) UNIX password: 
New password: 
Retype new password:
```

## **30、exit**

退出登录，不要小看这个exit，exit是正确退出，最好不要直接点windows关闭窗口按钮退出，也不要使用ctrl+D给定退出信号退出。