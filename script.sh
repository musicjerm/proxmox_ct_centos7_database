#!/usr/bin/env bash

# update server
yum update -y

# add repo
echo "# MariaDB 10.2 CentOS repository list" > /etc/yum.repos.d/mariadb.repo
echo "# http://downloads.mariadb.org/mariadb/repositories/" >> /etc/yum.repos.d/mariadb.repo
echo "[mariadb]" >> /etc/yum.repos.d/mariadb.repo
echo "name = MariaDB" >> /etc/yum.repos.d/mariadb.repo
echo "baseurl = http://yum.mariadb.org/10.2/centos7-amd64" >> /etc/yum.repos.d/mariadb.repo
echo "gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB" >> /etc/yum.repos.d/mariadb.repo
echo "gpgcheck=1" >> /etc/yum.repos.d/mariadb.repo

# install mariaDB
yum install MariaDB-server MariaDB-client -y