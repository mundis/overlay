Adding the overlay
------------------
To add this overlay to your system add the URL      
https://github.com/downloads/mundis/overlay/mundis.xml
to your `/etc/layman/layman.cfg`  
You have to add it below the line  
overlays  :     http://www.gentoo.org/proj/en/overlays/repositories.xml

Now you can test if it works with `layman -L | grep mundis`  
If your output is:
`* mundis                    [Git       ] (git://github.com/mundis/overlay.git  )`  
then you can add the overlay using `layman -a mundis`

###### All ebuilds into the overlay:  

<table>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-embedded/cc65/cc65-2.13.3.ebuild>dev-embedded/cc65/cc65-2.13.3</a>
</td><td>
It's a complete cross development package for 65(C)02 systems.
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-php/symfony2/symfony2-2.0.1.ebuild>dev-php/symfony2/symfony2-2.0.1</a>
</td><td>
Open-source PHP5 professional web framework
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-php/symfony2/symfony2-2.1.4.ebuild>dev-php/symfony2/symfony2-2.1.4</a>
</td><td>
Open-source PHP5 professional web framework
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/games-fps/gDoomsday/gDoomsday-1.1.ebuild>games-fps/gDoomsday/gDoomsday-1.1</a>
</td><td>
Patched ebuild that works for Frontend for DOOM engine doomsday
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/net-libs/libktorrent/libktorrent-1.1.3.ebuild>net-libs/libktorrent/libktorrent-1.1.3</a>
</td><td>
A BitTorrent library based on KDE Platform
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/net-p2p/ktorrent/ktorrent-4.1.3.ebuild>net-p2p/ktorrent/ktorrent-4.1.3</a>
</td><td>
A BitTorrent program for KDE.
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-apps/H2rename/H2rename-9999.ebuild>sys-apps/H2rename/H2rename-9999</a>
</td><td>
H2rename is especially developed to repair/rename broken charakters so called umlauts
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-fs/squashfs-tools/squashfs-tools-4.2-r1.ebuild>sys-fs/squashfs-tools/squashfs-tools-4.2-r1</a>
</td><td>
Patched Version of squashfs-tools for use with zenity-progress
</td></tr>
</table>
