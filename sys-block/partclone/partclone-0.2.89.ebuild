#;; This buffer is for notes you don't want to save, and for Lisp evaluation.
#;; If you want to create a file, visit that file with C-x C-f,
#;; then enter the text in that file's own buffer.

EAPI=5
inherit eutils

DESCRIPTION="Partition cloning tool"
HOMEPAGE="http://partclone.org"
SRC_URI="https://sourceforge.net/projects/partclone/files/stable/${PV}/partclone-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="nls btrfs exfat xfs -jfs -reiserfs -reiser4 hfs fat ntfs f2fs nilfs ufs vmfs"

COMMON_DEPEND="
	>=sys-fs/e2fsprogs-1.41"

RDEPEND="${COMMON_DEPEND}
        ntfs? ( >=sys-fs/ntfs3g-2011.4.12[ntfsprogs] )
        btrfs? ( sys-fs/btrfs-progs )
        fat? ( sys-fs/dosfstools )
        hfs? ( sys-fs/hfsutils )
        jfs? ( sys-fs/jfsutils )
        reiserfs? ( sys-fs/progsreiserfs )
        reiser4? ( sys-fs/reiser4progs )
        xfs? ( sys-fs/xfsprogs sys-fs/xfsdump )
				nilfs? ( sys-fs/nilfs-utils )
				ufs? ( sys-fs/ufsutils )
				f2fs? ( sys-fs/f2fs-tools )
				vmfs? ( net-fs/vmfs-tools )
"

DEPEND="${COMMON_DEPEND}
"

src_unpack()
{
        unpack ${A}
        cd ${S}
}

src_prepare()
{
				epatch "${FILESDIR}"/partclone_reiserfs.patch
}

src_compile()
{
        local myconf
        myconf="${myconf} --enable-extfs --enable-ncursesw --enable-minix"
				use !nls && myconf="${myconf} --disable-nls"
        use xfs && myconf="${myconf} --enable-xfs"
        use reiserfs && myconf="${myconf} --enable-reiserfs"
        use reiser4 && myconf="${myconf} --enable-reiser4"
        use hfs && myconf="${myconf} --enable-hfsp"
        use fat && myconf="${myconf} --enable-fat"
        use ntfs && myconf="${myconf} --enable-ntfs"
        use xfs && myconf="${myconf} --enable-xfs"
				use btrfs && myconf="${myconf} --enable-btrfs"
				use exfat && myconf="${myconf} --enable-exfat"
				use f2fs && myconf="${myconf} --enable-f2fs"
				use nilfs && myconf="${myconf} --enable-nilfs2"
				use ufs && myconf="${myconf} --enable-ufs"
				use vmfs && myconf="${myconf}  --enable-vmfs"
				use jfs && myconf="${myconf}  --enable-jfs"
        econf ${myconf} || die "econf failed"
        emake || die "make failed"
}

src_install()
{
        #emake install || die "make install failed"
        #emake DIST_ROOT="${D}" install || die "make install failed"
        cd ${S}/src
        dosbin partclone.dd partclone.restore partclone.chkimg partclone.imager
        dosbin partclone.extfs partclone.minix
        use xfs && dosbin partclone.xfs
        use reiserfs && dosbin partclone.reiserfs
        use reiser4 && dosbin partclone.reiser4
        use hfs && dosbin partclone.hfsp
        use fat && dosbin partclone.fat
        use ntfs && dosbin partclone.ntfs
        use ntfs && dosbin partclone.ntfsfixboot
				use nilfs && dosbin partclone.nilfs2
				use btrfs && dosbin partclone.btrfs
				use jfs && dosbin partclone.jfs
				use f2fs && dosbin partclone.f2fs
				use ufs && dosbin partclone.ufs
				use exfat && dosbin partclone.exfat
				use vmfs && dosbin partclone.vmfs*
 }
