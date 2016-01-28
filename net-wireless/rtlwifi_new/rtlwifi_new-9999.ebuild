# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
DESCRIPTION="Driver for Realtek rtl8192ce, rtl8192se, rtl8192de, rtl8188ee, rtl8192ee, rtl8723ae, rtl8723be, and rtl8821ae Wireless"
#EGIT_REPO_URI="https://github.com/lwfinger/rtlwifi_new.git"
EGIT_REPO_URI="/usr/portage/distfiles/egit-src/rtlwifi_new.git"
inherit git-2 linux-mod
SRC_URI=""
SLOT="0"
LICENSE="Realtek-Firmware-License"
KEYWORDS="~x86 ~amd64"
DEPEND="virtual/linux-sources"
RDEPEND=""
BUILD_TARGETS="all"
BUILD_TARGET_ARCH="${ARCH}"
MODULE_NAMES="rtl_pci(net-wireless)rtl_pci rtl_usb(net-wireless)rtl_usb rtlwifi(net-wireless)rtlwifi"
MODULE_NAMES="${MODULE_NAMES} rtl8821ae/rtl8821ae(net-wireless)rtl8821ae rtl8192ce/rtl8192ce(net-wireless)rtl8192ce rtl8192de/rtl8192de(net-wireless)rtl8192de rtl8192se/rtl8192se(net-wireless)rtl8192se"
MODULE_NAMES="${MODULE_NAMES} rtl8723ae/rtl8723ae(net-wireless)rtl8723ae rtl8192cu/rtl8192cu(net-wireless)rtl8192cu btcoexist/btcoexist(net-wireless)btcoexist rtl8188ee/rtl8188ee(net-wireless)rtl8188ee"
MODULE_NAMES="${MODULE_NAMES} rtl8192c/rtl8192c-common(net-wireless)rtl8192c-common rtl8723be/rtl8723be(net-wireless)rtl8723be rtl8192ee/rtl8192ee(net-wireless)rtl8192ee"
src_unpack() {
	git-2_src_unpack
	echo ${MODULE_NAMES}

}

pkg_setup() {
	linux-mod_pkg_setup
        BUILD_PARAMS="KERN_DIR=${KV_DIR} KERNOUT=${KV_OUT_DIR}"
}

src_install() {

	echo -e "\n\n"
	echo -e "\n\n"
	find . -name "*.ko"
	echo -e "\n\n"
	echo -e "\n\n"
	echo -e "\n\n"


        linux-mod_src_install
}

test() {
	pwd
	ls
	KO_NAMES=(`find . -name "*.ko"`)
	echo koname ${KO_NAMES[*]}
MODULE_NAMES="rtlwifi_new(net/wireless/rtlwifi_new)"

	echo -e "\n\n"
	echo -e "\n\n"



}


