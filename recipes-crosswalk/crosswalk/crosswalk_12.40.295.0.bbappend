FILESEXTRAPATHS_prepend := "${THISDIR}/crosswalk:"

SRC_URI += " \
    file://build_fix.patch \
    file://do_not_force_glib.patch \
    file://xwalk \
    "

DEPENDS_remove = "gtk+"
DEPENDS_remove = "libxss"
DEPENDS += "virtual/egl"

RDEPENDS_crosswalk += "\
    libegl-mesa \
    libgbm \
    libglapi \
    libgles1-mesa \
    libgles2-mesa \
    mesa-megadriver \
    "

DEFAULT_CONFIGURATION += "\
    -Dembedded=1 \
    -Dozone_platform_gbm=1 \
    -Dozone_platform_wayland=0 \
    -Duse_ozone=1 \
    -Duse_udev=1 \
    "

do_install_append() {
    # Remove the symlink and replace with the wrapper
    rm -f ${D}${bindir}/xwalk

    install -d ${D}${bindir}/
    install -m 0755 ${WORKDIR}/xwalk ${D}${bindir}/xwalk
}
