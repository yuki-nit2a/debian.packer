# debian.packer
My configuration playground of packer, preseed, vagrant, ansible to make debian package.

![Debian Logo (tCreative Commons Attribution-ShareAlike 3.0 Unported License)](https://raw.githubusercontent.com/yuki-nit2a/debian.packer/master/debian.png)

[Debian](https://www.debian.org/)

## To pack
    packer build \
        -var-file="var_debian.json" \
        -var-file="var_debian-*.*.*-amd64.json" \
        "template_debian.json"

## To debug builders
    packer build \
        -on-error=ask \
        -var-file="var_debian.json" \
        -var-file="var_debian-*.*.*-amd64.json" \
        "template_debian_debug-builder.json"

## To debug provisioners
    packer build \
        -on-error=ask \
        -var-file="var_debian.json" \
        "template_debian_debug-provisioner.json"
