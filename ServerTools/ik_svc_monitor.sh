#!/bin/bash

launch_command='lb_proxy -dc /etc/lb_proxy/conf.json'
proc_name='lb_proxy'

while true; do
	pidof ${proc_name} >/dev/null
	if [ $? -ne 0 ]; then
		echo "process ${proc_name} not exist at $(date)" >> monitor.log
		eval ${launch_command}
	else
		echo 'tick...'
	fi
	sleep 5
done
