FILE=/mnt/swapfile
if test -f "$FILE"; then
    echo "makeswap-on-azure-vm-tmp-drive: swapfile file alreaedy exists." >  /dev/kmsg
else
    fallocate -l 3333M $FILE
    chmod 600 $FILE
    mkswap $FILE
    swapon $FILE
fi  