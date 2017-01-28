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
<a href=https://github.com/mundis/overlay/tree/master/app-forensics/air>app-forensics/air</a>
</td><td>
A GUI front-end to dd/dc3dd
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-block/partclone-utils>sys-block/partclone-utils</a>
</td><td>
Partition cloning utilities
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-block/partclone>sys-block/partclone</a>
</td><td>
Partition cloning tool
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-block/drbl>sys-block/drbl</a>
</td><td>
DRBL (Diskless Remote Boot in Linux) is free software, open source solution to managing the deployment of the GNU/Linux operating system across many clients
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-block/clonezilla>sys-block/clonezilla</a>
</td><td>
Clonezilla is a partition and disk imaging/cloning program similar to True Image® or Norton Ghost®
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-libs/mjsulib>dev-libs/mjsulib</a>
</td><td>
library for slap 'Smart Label Printer'
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
<a href=https://github.com/mundis/overlay/tree/master/sys-fs/jfsutils>sys-fs/jfsutils</a>
</td><td>
IBM's Journaling Filesystem (JFS) Utilities patched for building libjfs.a needed by Partclone
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-kernel/aufs-sources>sys-kernel/aufs-sources</a>
</td><td>
Full sources including the Gentoo patchset for kernel 3.14.46 and aufs3 support
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-util/waf>dev-util/waf</a>
</td><td>
The flexible build system
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/app-emulation/vice>app-emulation/vice</a>
</td><td>
The Versatile Commodore 8-bit Emulator
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/app-misc/kupfer>app-misc/kupfer</a>
</td><td>
DESCRIPTIONS=(Commodore SID Emulator Commodore C128 Commodore C64 Commodore C64 DTV Commodore C64 SC Commodore CBM-II Commodore CBM-5x0 Commodore PET Commodore Plus/4 Commodore SuperCPU Commodore VIC-20)
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/app-misc/slap>app-misc/slap</a>
</td><td>
make_desktop_entry ${BINARIES[i]} ${DESCRIPTIONS[i]} Commodore_Icon Game
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-embedded/cc65>dev-embedded/cc65</a>
</td><td>
Kupfer, a convenient command and access tool
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sci-electronics/oregano>sci-electronics/oregano</a>
</td><td>
slap is 'Smart Label Printer' command line program
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sci-electronics/smartsim>sci-electronics/smartsim</a>
</td><td>
It's a complete cross development package for 65(C)02 systems.
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/media-video/blackmagic-drivers>media-video/blackmagic-drivers</a>
</td><td>
An application for schematic capture and simulation of electrical circuits
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/media-video/blackmagic-capture>media-video/blackmagic-capture</a>
</td><td>

</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/media-video/blackmagic-SDK>media-video/blackmagic-SDK</a>
</td><td>
Blackmagic Software and Driver
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-devel/distcc-configurator>sys-devel/distcc-configurator</a>
</td><td>
forked and extended version from original blackmagic-capture cli
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-python/python-zenity>dev-python/python-zenity</a>
</td><td>
SDK for development of blackmagic apps
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-php/symfony2>dev-php/symfony2</a>
</td><td>
distcc-configurator is a scripted autoconfiguration for distccd
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/media-gfx/mtpaint>media-gfx/mtpaint</a>
</td><td>
${PN} is a library for python inspired by zenity
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/net-print/cndrvcups-capt>net-print/cndrvcups-capt</a>
</td><td>
Open-source PHP5 professional web framework
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/net-print/cndrvcups-common>net-print/cndrvcups-common</a>
</td><td>
Simple gtk+ painting program
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/net-print/samsung-unified-driver>net-print/samsung-unified-driver</a>
</td><td>
Canon CUPS Capt driver
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/net-wireless/rtlwifi_new>net-wireless/rtlwifi_new</a>
</td><td>
Common files for the Canon CUPS Capt driver
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-apps/dc3dd>sys-apps/dc3dd</a>
</td><td>
Samsung Unified Linux Driver for printers and MFDs
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-apps/H2rename>sys-apps/H2rename</a>
</td><td>
Driver for Realtek rtl8192ce, rtl8192se, rtl8192de, rtl8188ee, rtl8192ee, rtl8723ae, rtl8723be, and rtl8821ae Wireless
</td></tr>
</table>
