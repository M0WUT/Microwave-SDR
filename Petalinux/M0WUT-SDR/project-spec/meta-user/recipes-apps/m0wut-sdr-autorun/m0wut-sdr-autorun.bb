#
# This file is the m0wut-sdr-autorun recipe.
#

SUMMARY = "Simple m0wut-sdr-autorun application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://m0wut-sdr-autorun \
	"

S = "${WORKDIR}"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
inherit update-rc.d

INITSCRIPT_NAME = "m0wut-sdr-autorun"
INITSCRIPT_PARAMS = "start 99 S ."

do_install() {
 install -d ${D}${sysconfdir}/init.d
 install -m 0755 ${S}/m0wut-sdr-autorun ${D}${sysconfdir}/init.d/m0wut-sdr-autorun
}

FILES_${PN} += "${sysconfdir}/*"
