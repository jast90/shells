cd /opt/software

tar -zxvf git.tar.gz

cd git-*

make configure

./configure --prefix=/usr/local

sudo make install

git --version
