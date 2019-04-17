#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 3;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating server$i container.."
    sleep 3
    docker run -it --name server$i 1982vivekmate/nginx-img /bin/bash
    echo "server$i container has been created!"
	echo "=============================="
done
docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} `docker ps -a -q` > IPs.txt
