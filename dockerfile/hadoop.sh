export JAVA_HOME=/usr/java/latest
# set the hadoop home
export HADOOP_HOME=/opt/hadoop-2.7.5
export HADOOP_PID_DIR="${HADOOP_HOME}/pids"
export YARN_PID_DIR=${HADOOP_PID_DIR}
export HADOOP_MAPRED_PID_DIR=${HADOOP_PID_DIR}
# set hadoop conf dir
export HADOOP_CONF_DIR=/etc/config/hadoop-conf

# set hadoop log dir
export HADOOP_LOG_DIR=/mnt/disk1/log/hadoop-hdfs
export YARN_LOG_DIR=/mnt/disk1/log/hadoop-yarn
export HADOOP_MAPRED_LOG_DIR=/mnt/disk1/log/hadoop-mapred
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

if [ "JAVA_LIBRARY_PATH" ]; then
  export JAVA_LIBRARY_PATH=$HADOOP_HOME/lib/native
else
  export JAVA_LIBRARY_PATH=$HADOOP_HOME/lib/native:$JAVA_LIBRARY_PATH
fi
