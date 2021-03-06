SUMMARY = "An image that will boot on a webapp."

LICENSE = "BSD"

IMAGE_FEATURES += "ssh-server-dropbear hwcodecs"

IMAGE_INSTALL = "\
    packagegroup-core-boot \
    connman \
    connman-client \
    crosswalk \
    kernel-modules \
    liberation-fonts \
    linux-firmware-iwlwifi-135-6 \
    linux-firmware-iwlwifi-6000g2a-5 \
    linux-firmware-iwlwifi-6000g2a-6 \
    linux-firmware-iwlwifi-6000g2b-6 \
    linux-firmware-iwlwifi-7260-7 \
    wireless-tools \
    wpa-supplicant \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    "

inherit core-image
