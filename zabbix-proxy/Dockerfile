FROM centos:7
MAINTAINER Criz

ADD zabbix-rpm.tar.gz /
RUN rpm -ihv zabbix-release-5.4-1.el7.noarch.rpm && \
    yum install -y zabbix-proxy-mysql && \
    systemctl enable zabbix-proxy.service && \
    rm -f zabbix-release-5.4-1.el7.noarch.rpm

ENTRYPOINT ["zabbix_proxy"]
CMD ["-f"]
