# fedora-32-live-cd-with-updated-systemd
Hack to create Fedora live CD with updated systemd package


$ sudo livecd-creator --verbose --config=fedora-live-workstation.ks --fslabel=Fedora-LiveCD --cache=/var/cache/live


# DEV: Quirck to select required kickstart files
$ (cd spin-kickstarts; ../search-ks-includes.sh fedora-live-workstation.ks)

