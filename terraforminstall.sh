#!/bin/bash 

URL=$(curl https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_linux_amd64.zip | awk -F \" '{print $2}')
FILE=$(echo $URL | awk -F / '{print $NF}')
curl -s -L -J -O $URL 
sudo yum install unzip -y 
unzip -o $FILE -d /bin
if [ $? -eq 0 ]; then 
  echo -e "\e[31m SUCCESS\e[0m"
fi 
