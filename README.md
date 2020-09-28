rtl8821cu for linux
===================

rtl8821cu/rtl8822cu linux kernel module for wireless abgn devices

Note:
This is an USB2 only adapter,  
which **may** have bluetooth support  
For specialities on this device read at the end  

<u>If one USB-ID is missing, please mail me.</u>  

build/load/function tested with v4.18.7  

Building and install driver
---------------------------

To build tthe driver type  
`make`  

To load the driver in the kernel type  
`sudo modprobe cfg80211`  
`sudo insmod rtl8821cu.ko`  


You need to install the needed firmware with  
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

you can do a scsi cdrom eject with  
`usb_modeswitch -v 0bda -p 1a2b -K`  
or  
`eject $DEVICE`

<u>Bluetooth support</u>  
some devices may have bluetooth built-in.  
i.e. Comfast or EDUP devices may do this  
you need some additional driver to use this.  

Please use prefix **rtl8821cu** if you want to mail me  
But please please don't, I have enough to do.  
TIA 

Hans Ulli Kroll <ulli.kroll@googlemail.com>
