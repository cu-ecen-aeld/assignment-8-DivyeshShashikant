#! /bin/sh

#Author: Divyesh Patel
#File: S98lddmodules.sh


case "$1" in
	start)
		echo "Loading misc-modules and scull"
		modprobe hello
		/usr/bin/scull_load
		/usr/bin/module_load faulty
		;;
	stop)
		echo "Removing misc-modules and scull"
		rmmod hello
		/usr/bin/scull_unload
		/usr/bin/module_unload faulty
		;;
	*)
		echo "Exiting"
		exit 1
esac
exit 0
