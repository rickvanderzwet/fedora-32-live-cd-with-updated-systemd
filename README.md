# fedora-32-live-cd-with-updated-systemd
Hack to create Fedora live CD with updated systemd package for dealing with boot issues as described at:
  - https://ask.fedoraproject.org/t/live-image-doesnt-boot/6645/6
  - https://bugzilla.redhat.com/show_bug.cgi?id=1830896#c6

# Create live CD
`$ sudo livecd-creator --verbose --config=fedora-live-workstation.ks --fslabel=Fedora-LiveCD --cache=/var/cache/live`


# DEV: Quirck to select required kickstart files
`$ (cd spin-kickstarts; ../search-ks-includes.sh fedora-live-workstation.ks)`

