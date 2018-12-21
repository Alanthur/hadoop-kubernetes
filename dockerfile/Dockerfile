FROM dahaian/centos6-ssh-jdk-master:latest
ADD hadoop-2.7.5.tar.gz /opt/
COPY hadoop.sh /etc/profile.d/
COPY hadoop-daemon.sh /opt/hadoop-2.7.5/sbin/
COPY yarn-daemon.sh /opt/hadoop-2.7.5/sbin/
RUN mkdir -p /mnt/disk1/hadoop/tmp && mkdir -p /mnt/disk1/data && mkdir -p /mnt/disk1/hdfs/name && mkdir -p /mnt/disk1/hdfs/edits && mkdir -p /mnt/disk1/hdfs/namesecondary && mkdir -p /mnt/disk1/mapred && mkdir -p /mnt/disk1/log/hadoop-mapreduce/history && mkdir -p /mnt/disk1/yarn && mkdir -p /mnt/disk1/log/hadoop-yarn/containers
COPY start.sh /bin/
RUN chmod 775 /bin/start.sh && chmod 775 /opt/hadoop-2.7.5/sbin/hadoop-daemon.sh && chmod 775 /opt/hadoop-2.7.5/sbin/yarn-daemon.sh
ENV USER root
# Hdfs ports
EXPOSE 50010 50020 50070 50075 50090 8020 9000
# Mapred ports
EXPOSE 8021 19888 10020
#Yarn ports
EXPOSE 8025 8030 8031 8032 8033 8040 8042 8088 20888
#Other ports
EXPOSE 49707 2122
CMD ["/bin/start.sh"]
