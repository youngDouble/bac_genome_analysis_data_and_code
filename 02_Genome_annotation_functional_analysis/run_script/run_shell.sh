#下载Anaconda3 安装文件
wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-5.3.0-Linux-x86_64.sh
#安装 Anaconda3
bash Miniconda3-py38_4.8.2-Linux-x86_64.sh
#弹出提示信息，按回车（ENTER键）继续

#conda配置国内镜像
source ~/miniconda3/bin/activate
#source ~/anaconda3/bin/activate
conda config --add channels http://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free
conda config --add channels http://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge
conda config --add channels http://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda
conda config --add channels http://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --set show_channel_urls yes

# 创建一个小环境名为 bioinfo
conda create -n bioinfo

#激活新建立的环境 bioinfo  并安装 prokka 软件
conda activate bioinfo
conda install  -y prokka

#测试安装软件
#prokka -h
#出现帮助信息则安装成功

#安装细菌二代基因组测序数据质控及组装软件
conda install  -y  fastp spades

## 注释 Escherichia coli  标准株 K-12
# 命令行中 "\" 在一行的末尾表示该命令没有完成 回车可在下一行继续输入后续命令语句 ，即一个命令分行显示
prokka --outdir K-12 --prefix K-12 --locustag K_12 \
--addgenes --addmrna --compliant --centre CDC \
--genus Escherichia --species "Escherichia coli" --strain K-12 \
--kingdom Bacteria --usegenus --cpus 4 --rfam --rnammer --force ./fasta_example_genomic.fna



#创建并安装 eggnogmapper -c 指定 下载通道
conda create -y -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda/  \
-n eggnogmapper eggnog-mapper

# cd 到数据库目录
cd path/to/emapper_databse
# --data_dir 参数指定下载存储的位置， $PWD 表示当前目录的路径 相当于上面的 path/to/emapper_databse
download_eggnog_data.py  -y --data_dir $PWD

#使用emapper注释蛋白序列
emapper.py --data_dir /pub/biodatabase/eggnog_5.0/database/  --database bact -m diamond  --cpu 20 \
--output_dir eggnog_out  --output eggnog_result -i test.faa