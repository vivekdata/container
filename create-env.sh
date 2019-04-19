#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating servert$i container.."
    sleep 1
    docker run --name server$i -d -it 1982vivekmate/nginx-img /bin/bash
    echo "server$i container has been created!"
	echo "=============================="
done

