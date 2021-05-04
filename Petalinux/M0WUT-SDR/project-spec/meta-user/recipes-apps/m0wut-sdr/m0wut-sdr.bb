#
# This file is the m0wut-sdr recipe.
#

SUMMARY = "Simple m0wut-sdr application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://m0wut-sdr.cpp \
           file://Makefile \
		   file://adau1361_common.h \
		   file://adau1361_input_channel.h \
		   file://adau1361_input_channel.cpp \
		   file://adau1361_output_channel.h \
		   file://adau1361_output_channel.cpp \
		   file://adau1361_pll.h \
		   file://adau1361_pll.cpp \
		   file://adau1361.h \
		   file://adau1361.cpp \
		   file://audio_handler.h \
		   file://audio_handler.cpp \
		   file://iic.h \
		   file://iic.cpp \
		  "

S = "${WORKDIR}"

do_compile() {
	     oe_runmake
}

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 m0wut-sdr ${D}${bindir}
}
