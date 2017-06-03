# Run source get_me_linux_on_mac.sh in order to set the docker environment variables

if ! brew list | grep docker-machine; then
	echo "Docker not installed, installing now"
	brew install docker-machine docker
fi

# Start the first docker-machine vm 
docker_vm=$(docker-machine ls | head -2 | tail -1 | cut -d' ' -f1)
docker-machine start $docker_vm
eval $(docker-machine env $docker_vm)
docker pull ubuntu
docker run -it ubuntu bash


