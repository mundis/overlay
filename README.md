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
<tr><td style="font-size:70%;">
<a href=https://github.com/mundis/overlay/tree/master/games-fps/gDoomsday/gDoomsday-1.1.ebuild>games-fps/gDoomsday/gDoomsday-1.1.ebuild</a>
</td><td style="font-size:70%;">
Patched ebuild that works for Frontend for DOOM engine doomsday
</td></tr>
<tr><td style="font-size:70%;">
<a href=https://github.com/mundis/overlay/tree/master/sys-apps/H2rename/H2rename-9999.ebuild>sys-apps/H2rename/H2rename-9999.ebuild</a>
</td><td style="font-size:70%;">
H2rename is especially developed to repair/rename broken charakters so called umlauts
</td></tr>
<tr><td style="font-size:70%;">
<a href=https://github.com/mundis/overlay/tree/master/sys-fs/squashfs-tools/squashfs-tools-4.2-r1.ebuild>sys-fs/squashfs-tools/squashfs-tools-4.2-r1.ebuild</a>
</td><td style="font-size:70%;">
Patched Version of squashfs-tools for use with zenity-progress
</td></tr>
</table>
