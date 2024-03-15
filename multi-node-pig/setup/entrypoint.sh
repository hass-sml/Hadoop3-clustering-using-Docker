#!/bin/bash

# Generate SSH key pair if not present
if [ ! -f /root/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -f /root/.ssh/id_rsa -q -N ""
fi

# Ensure the shared volume directory exists
mkdir -p /shared-keys

# Copy the public key to the shared volume with a unique identifier
cp /root/.ssh/id_rsa.pub /shared-keys/$(hostname).pub

# Wait briefly for other nodes to share their keys
sleep 10

# Append all public keys to authorized_keys
cat /shared-keys/*.pub >> /root/.ssh/authorized_keys

# Ensure correct permissions
chmod 600 /root/.ssh/authorized_keys


echo "export JAVA_HOME=$JAVA_HOME" >> /opt/hadoop/etc/hadoop/hadoop-env.sh
echo "export JAVA_HOME=$JAVA_HOME" >> /opt/hadoop/etc/hadoop/yarn-env.sh
echo "export JAVA_HOME=$JAVA_HOME" >> /opt/hadoop/etc/hadoop/mapred-env.sh

# Start SSHD in the foreground
/usr/sbin/sshd -D


