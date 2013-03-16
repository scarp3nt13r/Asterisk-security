apt-get install -y linux-headers-`uname -r` bison openssl libssl-dev libeditline0 libeditline-dev libedit-dev
apt-get install -y gcc make g++ php5-cli mysql-common libmysqlclient15-dev libnewt-dev
apt-get install -y vim sox nmap ngrep iftop iptraf elinks lynx
apt-get install -y libxml2 libxml++2.6-dev subversion libgmime-2.4-2 libgmime-2.4-dev
apt-get install -y libiksemel-dev libiksemel-utils libiksemel3 speex libspeex-dev libresample1 libresample1-dev resample 
apt-get install -y libspeex-dev libspeex1 libspeexdsp-dev libspeexdsp1 libogg-dev libvorbis-dev
apt-get install -y curl libcurl3-dbg libcurl3-gnutls libcurl3 unixodbc unixodbc-dev unixodbc-bin 
apt-get install -y libsrtp0 libsrtp0-dev radiusclient1 libradius1-dev
apt-get install -y libsqlite0 libsqlite0-dev libsqlite3-0 libsqlite3-dev libdbd-pgsql freetds-dev libcurl3-dev 
apt-get install -y odbc-postgresql postgresql-client-8.4 libpq-dev libjack-jackd2-0 libjack-jackd2-dev
apt-get install -y libneon27 libneon27-dev libneon27-dbg libical-dev libopenais-dev libsnmp-dev 
apt-get install -y libreadline-dev libpopt-dev liblua5.1-0-dev libspandsp-dev ghostscript libtiff-tools sharutils libkqueue-dev 

##LIBSRTP http://sourceforge.net/projects/srtp/files/srtp/
##GitHub : https://github.com/dswarbrick/libsrtp/archive/master.zip
## Note : If you have a prblem whith shared library when you comiling Asterisk add -fPIC in Makefile:
## CFLAGS  = -fPIC -Wall -O4 -fexpensive-optimizations -funroll-loops
## make && make runtest && make install

cd /usr/src
wget http://sourceforge.net/projects/srtp/files/srtp/1.4.4/libsrtp-1.4.4.pdf/download
mv download srtp-1.4.4.tgz
tar -xzf srtp-1.4.4.tgz
cd srtp

./configure --prefix=/usr
make 
make runtest
make install

