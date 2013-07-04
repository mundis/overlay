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

##### All ebuilds into the overlay:  

<table>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/net-libs/libktorrent>net-libs/libktorrent</a>
</td><td>
A BitTorrent library based on KDE Platform
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/media-sound/sox>media-sound/sox</a>
</td><td>
The swiss army knife of sound processing programs
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-php/symfony2>dev-php/symfony2</a>
</td><td>
Open-source PHP5 professional web framework
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/dev-embedded/cc65>dev-embedded/cc65</a>
</td><td>
It's a complete cross development package for 65(C)02 systems.
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/net-p2p/ktorrent>net-p2p/ktorrent</a>
</td><td>
A BitTorrent program for KDE.
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-fs/squashfs-tools>sys-fs/squashfs-tools</a>
</td><td>
Patched Version of squashfs-tools for use with zenity-progress
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/sys-apps/H2rename>sys-apps/H2rename</a>
</td><td>
H2rename is especially developed to repair/rename broken charakters so called umlauts
</td></tr>
<tr><td>
<a href=https://github.com/mundis/overlay/tree/master/games-fps/gDoomsday>games-fps/gDoomsday</a>
</td><td>
Patched ebuild that works for Frontend for DOOM engine doomsday
</td></tr>
</table>
