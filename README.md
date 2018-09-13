rtl8821cu for linux
===================

rtl8821cu/rtl8822cu linux kernel driver Wireless Dual-Band USB Adapter

Note:
This is an USB2 only adapter,  
which **may** have bluetooth support  
For specialities on this device read at the end  

<u>If one USB-ID is missing, please mail me.</u>  

build/load/function tested with v4.18.7  

Building and install driver
---------------------------

for building type  
`make`  

for load the driver  
`sudo modprobe cfg80211`  
`sudo insmod rtl8821cu.ko`  


You need to install the needed fw with  
`sudo make installfw`  

If you need to crosscompile use  
`ARCH= CROSS_COMPILE= KSRC=`  
while calling `make` i.e.  

`make ARCH="arm" CROSS_COMPILE=armv5tel-softfloat-linux-gnueabi- KSRC=/home/linux-master modules`  

<u>CDROM emulation</u>  
The device exists in various flavours  
including cdrom emulation for windows  
knowing USB id's doing this trick (after cold boot)  
  *  0x0bda 0x1a2b

you can do a scsi cdrom ejcet with  
`usb_modeswitch -v 0bda -p 1a2b -K`  
or  
`eject $DEVICE`

<u>Bluetooth support</u>  
some device may have bluetooth build in.  
i.e. Comfast or EDUP devices may do this  
you need some additional driver to do this.  

Please use prefix : rtl8821cu in subjet line
TIA  

Hans Ulli Kroll <ulli.kroll@googlemail.com>
