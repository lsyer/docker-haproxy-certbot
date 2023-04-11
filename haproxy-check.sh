#!/bin/sh

cfg_file=$1

if [ -z "$1" ]
  then
  	cfg_file="/config/haproxy.cfg"
    echo "No argument supplied, using" ${cfg_file}
    echo "To use config from host fs try \"(docker exec -i container haproxy-check -) < path_to_your_config\""
fi

/usr/local/sbin/haproxy -c -V -f ${cfg_file}
