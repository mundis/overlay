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
then you can now add the overlay using `layman -a mundis`

#### All ebuilds into the overlay:

<table>
<tr><td style="font-size:50%;">
<a href=https://github.com/mundis/overlay/tree/master/dev-embedded/cc65/cc65-2.13.3>dev-embedded/cc65/cc65-2.13.3.ebuild</a>
</td><td style="font-size:50%;">
It's a complete cross development package for 65(C)02 systems.
</td></tr>
<tr><td style="font-size:50%;">
<a href=https://github.com/mundis/overlay/tree/master/dev-php/symfony2/symfony2-2.0.1>dev-php/symfony2/symfony2-2.0.1.ebuild</a>
</td><td style="font-size:50%;">
Open-source PHP5 professional web framework
</td></tr>
<tr><td style="font-size:50%;">
<a href=https://github.com/mundis/overlay/tree/master/dev-php/symfony2/symfony2-2.1.4>dev-php/symfony2/symfony2-2.1.4.ebuild</a>
</td><td style="font-size:50%;">
Open-source PHP5 professional web framework
</td></tr>
<tr><td style="font-size:50%;">
<a href=https://github.com/mundis/overlay/tree/master/games-fps/gDoomsday/gDoomsday-1.1>games-fps/gDoomsday/gDoomsday-1.1.ebuild</a>
</td><td style="font-size:50%;">
Patched ebuild that works for Frontend for DOOM engine doomsday
</td></tr>
<tr><td style="font-size:50%;">
<a href=https://github.com/mundis/overlay/tree/master/net-libs/libktorrent/libktorrent-1.1.3>net-libs/libktorrent/libktorrent-1.1.3.ebuild</a>
</td><td style="font-size:50%;">
A BitTorrent library based on KDE Platform
</td></tr>
<tr><td style="font-size:50%;">
<a href=https://github.com/mundis/overlay/tree/master/net-p2p/ktorrent/ktorrent-4.1.3>net-p2p/ktorrent/ktorrent-4.1.3.ebuild</a>
</td><td style="font-size:50%;">
A BitTorrent program for KDE.
</td></tr>
<tr><td style="font-size:50%;">
<a href=https://github.com/mundis/overlay/tree/master/sys-apps/H2rename/H2rename-9999>sys-apps/H2rename/H2rename-9999.ebuild</a>
</td><td style="font-size:50%;">
H2rename is especially developed to repair/rename broken charakters so called umlauts
</td></tr>
<tr><td style="font-size:50%;">
<a href=https://github.com/mundis/overlay/tree/master/sys-fs/squashfs-tools/squashfs-tools-4.2-r1>sys-fs/squashfs-tools/squashfs-tools-4.2-r1.ebuild</a>
</td><td style="font-size:50%;">
Patched Version of squashfs-tools for use with zenity-progress
</td></tr>
</table>
