 Install Iperf 3.1.3 via the command line :

Packages are manually installed via the dpkg command (Debian Package Management System). dpkg is the backend to commands like apt-get and aptitude, which in turn are the backend for GUI install apps like the Software Center and Synaptic.

- Ubuntu 64 bits / Debian 64 bits / Mint 64 bits (AMD64) : 

apt-get remove iperf3 libiperf0
wget https://iperf.fr/download/ubuntu/libiperf0_3.1.3-1_amd64.deb
wget https://iperf.fr/download/ubuntu/iperf3_3.1.3-1_amd64.deb
dpkg -i libiperf0_3.1.3-1_amd64.deb iperf3_3.1.3-1_amd64.deb
rm libiperf0_3.1.3-1_amd64.deb iperf3_3.1.3-1_amd64.deb




Debian wheezy下的glibc版本为2.13，安装几个软件都运行不了，报以下类似错误：
xxxx: /lib/i386-linux-gnu/i686/cmov/libc.so.6: version `GLIBC_2.15' not found (required by xxxx)

解决方法：把glibc升级到2.15版本：
添加软件源，刷新系统：
echo "deb http://ftp.debian.org/debian sid main" >> /etc/apt/sources.list
apt-get update
之后安装软件：
apt-get -t sid install libc6 libc6-dev libc6-dbg

complete！
