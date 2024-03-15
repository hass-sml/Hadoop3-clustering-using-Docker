# Start with a lightweight Ubuntu base image
FROM ubuntu:20.04

# Avoid prompts from apt during build
ARG DEBIAN_FRONTEND=noninteractive

# Update apt repositories and install necessary packages
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk openssh-server vim iputils-ping wget && \
    rm -rf /var/lib/apt/lists/*

# Set environment variables for Java and Hadoop
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 

ENV HADOOP_VERSION=3.3.6 
ENV HADOOP_HOME=/opt/hadoop \
    PATH=$PATH:/opt/hadoop/bin:/opt/hadoop/sbin

# Download and unpack Hadoop
RUN wget https://archive.apache.org/dist/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz -O /tmp/hadoop-$HADOOP_VERSION.tar.gz && \
    tar -xzf /tmp/hadoop-$HADOOP_VERSION.tar.gz -C /opt && \
    mv /opt/hadoop-$HADOOP_VERSION $HADOOP_HOME && \
    rm /tmp/hadoop-$HADOOP_VERSION.tar.gz

# Configure SSH (Automatically generate SSH host keys)
RUN ssh-keygen -A && \
    mkdir /var/run/sshd

# Copy Hadoop configuration files from the local ./conf directory to the container
COPY ./conf/* $HADOOP_HOME/etc/hadoop/
COPY ./setup/entrypoint.sh /usr/local/bin/entrypoint.sh

# Set the script to be executable
RUN chmod +x /usr/local/bin/entrypoint.sh
# Set Hadoop service users
ENV HDFS_NAMENODE_USER=root \
    HDFS_DATANODE_USER=root \
    HDFS_SECONDARYNAMENODE_USER=root \
    YARN_RESOURCEMANAGER_USER=root \
    YARN_NODEMANAGER_USER=root

# Expose the necessary ports
EXPOSE 22 9870 8088

# Use the entrypoint script to start services
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
