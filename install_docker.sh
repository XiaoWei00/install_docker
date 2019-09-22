#!/bin/bash

log="###install_docker:"

shell_exit(){
    echo "${log}shell exit"
    exit 
}


#return 1: 	success
#		0:	fail
check_docker_install(){

	echo "${log}check if docker is installed";
	docker_install_result=`docker --version | grep version`;
	echo "${log}${docker_install_result}";
	if [ "${docker_install_result}" != " " ]; then 
		echo "${log}docker is installed";
		return 0;
	else
		echo "${log}docker is not installed";
		return 1;
	fi
}


echo "install curl..."
#sudo apt-get update
#sudo apt install -y curl


check_docker_install
check_result=$?

if [ ${check_result} == 0 ]; then
	echo "${log}docker has be installed"
	shell_exit
else
	echo "get docker and install it..."


:<<\EOF
#	wget -qO- https://get.docker.com/ | sh
	
#	if [ check_docker_install == 0 ]; then 
#		
#		echo "${log}add ${USER} to the docker group..."
#		sudo usermod -aG docker $USER
#		echo "${log}start docker service"
#		sudo service docker start
	
	else
		
		echo "${log}install fail"
	#	shell_exit
		
	fi
EOF

fi







