# after update Kubunto 14 to 16 suddenly the VMBOX could not be started again
# error message that some vmbox driver was missing
# the following command fixed this problem
# author: asahm
# date: 12.09.2016

sudo modprobe vboxdrv
sudo chmod 660 /dev/vboxdrv
sudo chgrp vboxusers /dev/vboxdrv 
