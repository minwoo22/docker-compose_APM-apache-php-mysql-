FROM centos:centos7

RUN rpm --import etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
RUN yum -y install httpd php php-mysql

EXPOSE 80

COPY html/index.php /var/www/html

CMD ["httpd","-D", "FOREGROUND"]
