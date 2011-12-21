/bin/stty -F /dev/s3c_serial1 ispeed 921600 ospeed 921600 cs8 -cstopb clocal -crtscts -parodd
/sbin/bccmd -t bcsp -d /dev/s3c_serial1 psload -r /etc/bluetooth/bluez.psr
/system/bin/hciattach -n -s 921600 /dev/s3c_serial1 bcsp 921600 noflow