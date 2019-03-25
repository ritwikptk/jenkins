#/bin/bash
yum install epel-release -y
yum install java-1.8.0-openjdk.x86_64 -y
echo "export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk" >> /etc/profile
echo "export JRE_HOME=/usr/lib/jvm/jre" >> /etc/profile
source /etc/profile
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
systemctl start jenkins
systemctl enable jenkins
firewall-cmd --add-port=8080/tcp --per
firewall-cmd --reload
