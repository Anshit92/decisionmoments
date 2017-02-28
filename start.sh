#!/bin/bash
MP_URL=https://raw.githubusercontent.com/mapr/mapr-azure/master/v5.2.0_mk
AMI_SBIN=/home/mapr/sbin

for f in $( cd $AMI_SBIN; ls ) ; do
   curl -f ${MP_URL}/$f -o /home/mapr/sbin/$f
done

sh /home/mapr/sbin/installer-wrapper.sh $1 $2 $3 $4 $5 $6 $7 $8
function install {
mkdir -p /opt/nifi
cd /opt/nifi/
wget http://redrockdigimark.com/apachemirror/nifi/1.1.2/nifi-1.1.2-bin.tar.gz
tar -xzvf nifi-1.1.2-bin.tar.gz
#/opt/nifi/nifi-1.1.2/bin/nifi.sh start

}

install
