
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://add-sh4.patch \
    file://udev-builtin-input_id.patch \
    file://init \
"

do_install_append() {
	install -d ${D}${base_libdir}
	ln -sf libudev.so.1.6.3  ${D}${base_libdir}/libudev.so.0
}

DEPENDS += " udev-extraconf"
RDEPENDS_${PN} += " udev-extraconf"