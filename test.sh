#!/bin/bash
pids=$(ps augx | grep '$3' | awk  '{print $2}')
for pid in $pids; do
    echo "Killing PID $pid"
    sudo kill -9  $pid
done

sudo ssh -f -i ~/.ssh/id_rsa -L $3:$1:$2 -p61 -i ~/.ssh/<key_to_proxy_server> <proxy_username>@<proxy_ip> -N


ssh -i ~/.ssh/<proxy_username>@localhost -p $3



