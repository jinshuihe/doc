# -- coding: utf-8 --

source env/bin/activate
./scripts/train.sh -net squeezeDet -train_dir ./logs/squeezedet -gpu 0
./scripts/eval.sh -net squeezeDet -eval_dir ./logs/squeezedet -image_set (train|val) -gpu 1

./scripts/train.sh -net squeezeDet -train_dir ./logs-1248-384-895-batch20-4gpu/squeezedet -gpu 0,1,2,3

查看视图
tensorboard --logdir=./squeezedet/train

ipython notebook
echo -e "\033[?25h"    显示光标

让PIP源使用国内镜像，提升下载速度和安装成功率
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorflow
中国科技大学 
-i https://pypi.mirrors.ustc.edu.cn/simple/

cd - 将工作目录改成先前的工作目录
mv item1 item2 将文件重命名为/移动文件
mkdir --help 显示命令的使用信息
clear
history
history|less

sudo apt-get update  更新软件列表
sudo apt-get upgrade   更新软件
查看已安装的软件包列表
dpkg --list
sudo apt-get --purge remove <programname>
sudo apt-get remove <programname>

ll  查看当文件夹下详细信息
rm env 删除文件夹
rm -rf env  删除非空文件
rmdir caffe_test2 删除文件夹
ctril + c 退出当前操作/终止命令
GTX 1080 Ti
pwd  显示当前所处的路径
cp ./src/demo.py ./src/demo2.py    复制文件
cp -r 3.1.0.zip /home/name 移动文件到指定目录
apt-get update 更新库中的软件包
cp /home/name/3.1.0.zip . 复制文件，将/home/name/3.1.0.zip复制到当前路径下
gzip foo.txt 压缩并代替源文件
gunzip foo.txt 解压所并代替
ls -l foo.* 显示详细路径下文件的详细信息
zip与unzip ：
这是一对命令，zip进行压缩，unzip进行解压,压缩完成扩展名为.zip
# zip test.zip test/      -----进行压缩，可以是文件也可以是文件夹
# unzip test.zip         -----解压缩

tar:
tar并不是一个压缩软件，而是一个打包软件，就是将文件或者文件夹打包成一个文件，便于文件备份及归档，通常扩展名为tar。
# tar -cvf test.tar test  ----将test文件夹打包成test.tar。
# tar -xvf test.tar     ----将test.tar 进行拆解，从中抽取文件
# tar -tvf test.tar     ----列出tar包中内容
# tar -rf  test.tar log/   ----将log文件夹追加到test.tar中

tar -xf gcc-5.2.0.tar.bz2   gcc安装文件下载完成后，执行以下命令解压文件
./test 执行脚本，需显示指定脚本的路径

df 查看boot的占用情况

将本地文件拷贝至服务器指定位置（先到当前文件夹下）
scp -r Install-OpenCV-master.zip name@192.168.4.69:/home/name/squeezeDet-master/data
scp -r Install-OpenCV-master.zip name@192.168.4.69:/media/a1/2T/share/name/
将服务器中的文件拷贝至本地指定路径
scp -r name@192.168.4.69:/home/name/faster2 /home/tony/
scp -r name@192.168.4.69:/home/name/squeezeDet-master/logs-87001 /home/suanfa/pg/squeezeDet-master
将本地文件拷贝至服务器指定位置（先到当前文件夹下)
scp -r parking_data-882 name@192.168.18.1:/home/name/squeezeDet-master/data


进入ipynb文件所在目录，输入ipython notebook，会在浏览器中打开ipynb文件。

Linux下拷贝一个目录：
比如要把/home/user拷贝到/mnt/temp
cp -R /home/user/* /mnt/temp
但是这样有一个问题，/home/usera下的隐藏文件都不会被拷贝，子目录下的隐藏文件倒是会的。
正确方法：
cp -R /home/user/. /mnt/temp

查看gpu
Nvidia-smi
watch nvidia-smi
watch –n 1 –d nvidia-smi

1. cpu、内存
使用top命令
$ top
有一个更直观的监测工具，叫htop
$ sudo apt-get install htop
$ stop
2. 查看gpu
使用 nvidia-smi 命令
$ nvidia-smi
但是这个命令只能显示一次，如果要实时显示，配合watch命令, 让一秒刷新一次
$ watch -n 1 nvidia-smi



rm -r caffe   删除含有子文件夹的文件夹
make all -j8 -protobuf

Ctrl+a 光标移动到开始位置
Ctrl+e 光标移动到最末尾

服务器共享路径
smb://192.168.4.69/
smb://192.168.4.69/share2

.c文件编写-生成-运行
vim cam.c
gcc cam.c 编译生成a.out文件
./a.out    执行

或者 vim cam.c
vim Makefile
make                       （之前可能要make clean）
./test lena.bmp            运行文件

pkg-config --modversion opencv   查看opencv版本

运行自己的脚本，执行前，需添加权限
chmod +x build_all.sh

sudo apt-get autoremove –purge youdao-dict 卸载软件

pip install --timeout 1000 numpy 延迟，避免下载中断
sudo pip install tensorflow-0.8.0-cp27-none-linux_x86_64.whl   通过.whl安装软件

sudo -s 切换到root

编译生成运行
mkdir build
cd build
cmake ..
make
./helloworld pitcure.jpg
Ctrl + H 显示/隐藏文件
echo -e "\033[?25l"  隐藏光标
sudo apt-get update,更新软件源，最后会读取软件包列表
sudo apt-get install python-tk   安装软件
sudo pip install --timeout 500 tensorflow_gpu-1.2.1-cp27-none-linux_x86_64.whl

ifconfig  查看本机ip

启动VNC
服务器端：vncserver  :11
客户端：vncviewer 192.168.4.69:11

打开新的终端窗口合并显示：ctrl+shift+t 
终端窗口切换：Alt 1,Alt 2

pip install --upgrade pip
pip install easydict==1.6

创建新的虚拟环境
cd ~
virtualenv env --python=python
启动虚拟环境
cd ~
source env/bin/activate
退出虚拟环境
deactivate

启动虚拟环境
cd ~
source env/bin/activate

pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.0-cp27-none-linux_x86_64.whl

touch .vimrc  创建文件

pip install -U scikit-image
-U 是 --upgrade 的简写。就是把所有包升级到最新版。


安装.deb文件
dpkg -i  graphviz_2.38.0-1~saucy_amd64.deb

Linux 安装、卸载程序

一， RPM
安装： rpm -ivh xxx.rpm
重新安装： rpm -ivh -replacepkgs xxx.rpm
卸载： rpm -e xxx.rpm

二，tar.gz， tar.bz, tar.bz2
安装： 
（1）解压：tar -zxvf xxx.tar.gz ( tar -jxvf xxx.tar.bz(or bz2) )
（2）./configure (./configure --prefix=path (如：/usr/local/xxx)
（3）make
（4）make install

  卸载：
make uninstall

三，.bin
安装：
（1）chmod +x xxx.bin （添加执行权限）
（2）执行文件：./xxx.bin

卸载：
直接删除安装目录
四，.deb
安装： dpkg -i xxx.deb
卸载： dpkg -r xxx.deb
五，apt-get
安装：
sudo apt-get install xxx
卸载：
sudo apt-get remove xxx
六，pip 安装python包
sudo apt-get install python-setuptools python-pip
安装： pip install xxx
卸载： pip uninstall xxx
Ubuntu下查看软件版本及安装位置 
查看软件版本:
aptitude show xxx
也可用apt-show-versions (要先安装sudo apt-get install apt-show-versions)
查看软件安装位置:
dpkg -L xxxx
查看软件是否安装：
dpkg -l | grep filename


ubuntu查看 Python安装路径
s@s-pc:~/mypython$ which python
/usr/bin/python


vscode去波浪线
pylint --generate-rcfile > ~/.pylintrc
gedit ~/.pylintrc
disable=   >>  disable=W,C
重启

pip list 查看已安装的包
pip show opencv-python 查看已安装包的信息







