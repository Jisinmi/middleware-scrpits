#Auhtor: SM
#DATE: 10/28/1999

echo "Building Sonarqube server"

sleep 2
sudo yum update -y

sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y

cd /opt
sudo yum install wget unzip -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
 ./sonar.sh start