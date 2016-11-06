#!/bin/bash

num_files=`ls ./data | wc -l`
if [ 0 != $num_files ]; then
	echo "./data is not empty!"
	exit 0;
fi

sudo mount -t ntfs-3g -o rw,uid=epsilon,gid=epsilon,umask=003 /dev/sda1 ./data/
