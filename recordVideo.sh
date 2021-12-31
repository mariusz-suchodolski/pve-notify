#!/bin/bash
VMID=
VMNAME=
VMNODE=
DIRECTORYPREFIX=/video

mkdir -p $DIRECTORYPREFIX/$VMNAME

qm start $VMID

for (( i=0; i<60; ++i)); do
    pvesh create /nodes/$VMNODE/qemu/$VMID/monitor --command "screendump $DIRECTORYPREFIX/$VMNAME/images-$i.ppm"
    echo "$i"
    sleep 1
done

ffmpeg -framerate 5 -i "$DIRECTORYPREFIX/$VMNAME/images-%d.ppm" "$DIRECTORYPREFIX/$VMNAME/output.mp4"
rm $DIRECTORYPREFIX/$VMNAME/images-*
