Adding the overlay
------------------
To add this overlay to your system:  
uncomment in: `/etc/layman/layman.cfg` the line  
`# overlay_defs : /etc/layman/overlays` to  
`overlay_defs : /etc/layman/overlays`  
and use the following commands  
`wget -P /etc/layman/overlays/ https://raw.github.com/mundis/overlay/master/mundis.xml`  
`layman -L`  
`layman -a mundis`

##### All ebuilds into the overlay:  

<table>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/app-crypt/chntpw>app-crypt/chntpw</a>
</td><td>
Offline Windows NT Password & Registry Editor
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/app-emulation/vice>app-emulation/vice</a>
</td><td>
The Versatile Commodore 8-bit Emulator
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/app-forensics/air>app-forensics/air</a>
</td><td>
A GUI front-end to dd/dc3dd
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/app-misc/slap>app-misc/slap</a>
</td><td>
slap is 'Smart Label Printer' command line program
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-embedded/cc65>dev-embedded/cc65</a>
</td><td>
It's a complete cross development package for 65(C)02 systems.
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-libs/mjsulib>dev-libs/mjsulib</a>
</td><td>
library for slap 'Smart Label Printer'
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-php/symfony2>dev-php/symfony2</a>
</td><td>
Open-source PHP5 professional web framework
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-util/waf>dev-util/waf</a>
</td><td>
The flexible build system
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/media-video/blackmagic-SDK>media-video/blackmagic-SDK</a>
</td><td>
SDK for development of blackmagic apps
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/media-video/blackmagic-capture>media-video/blackmagic-capture</a>
</td><td>
forked and extended version from original blackmagic-capture cli
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/media-video/blackmagic-drivers>media-video/blackmagic-drivers</a>
</td><td>
Blackmagic Software and Driver
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/net-wireless/rtlwifi_new>net-wireless/rtlwifi_new</a>
</td><td>
Driver for Realtek rtl8192ce, rtl8192se, rtl8192de, rtl8188ee, rtl8192ee, rtl8723ae, rtl8723be, and rtl8821ae Wireless
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sci-electronics/oregano>sci-electronics/oregano</a>
</td><td>
An application for schematic capture and simulation of electrical circuits
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-apps/H2rename>sys-apps/H2rename</a>
</td><td>
H2rename is especially developed to repair/rename broken charakters so called umlauts
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-apps/dc3dd>sys-apps/dc3dd</a>
</td><td>
Patched version of dd with features intended for forensic acquisition of data
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-block/clonezilla>sys-block/clonezilla</a>
</td><td>
Clonezilla is a partition and disk imaging/cloning program similar to True Image® or Norton Ghost®
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-block/drbl>sys-block/drbl</a>
</td><td>
DRBL (Diskless Remote Boot in Linux) is free software, open source solution to managing the deployment of the GNU/Linux operating system across many clients
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-block/partclone>sys-block/partclone</a>
</td><td>
Partition cloning tool
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-block/partclone-utils>sys-block/partclone-utils</a>
</td><td>
Partition cloning utilities
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-devel/distcc-configurator>sys-devel/distcc-configurator</a>
</td><td>
distcc-configurator is a scripted autoconfiguration for distccd
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-fs/jfsutils>sys-fs/jfsutils</a>
</td><td>
IBM's Journaling Filesystem (JFS) Utilities patched for building libjfs.a needed by Partclone
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-fs/squashfs-tools>sys-fs/squashfs-tools</a>
</td><td>
Patched Version of squashfs-tools for use with zenity-progress
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-fs/vmfs-tools>sys-fs/vmfs-tools</a>
</td><td>
vmfs-tools allows to access VMFS through the standard Linux VFS with the help of the FUSE framework
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-kernel/aufs-sources>sys-kernel/aufs-sources</a>
</td><td>
Full sources including the Gentoo patchset for kernel 3.14.46 and aufs3 support
</td></tr>
</table>
