# fedora-32-live-cd-with-updated-systemd
Hack to create Fedora live CD with updated systemd package for dealing with boot issues as described at:
  - https://ask.fedoraproject.org/t/live-image-doesnt-boot/6645/6
  - https://bugzilla.redhat.com/show_bug.cgi?id=1830896#c6

# Create live CD
```bash
$ git clone https://github.com/rickvanderzwet/fedora-32-live-cd-with-updated-systemd.git
$ cd fedora-32-live-cd-with-updated-systemd
$ sudo livecd-creator --verbose --config=fedora-live-workstation.ks \
    --fslabel=Fedora-LiveCD --cache=/var/cache/live
```

ISO  created at 17 Juni 2020 (amd64): Found here: 
  - https://rickvanderzwet.nl/trunkplaza/Fedora32-LiveCD-with-updated-systemd.iso

# DEV: Quirck to select required kickstart files
``` bash
$ (cd spin-kickstarts; ../search-ks-includes.sh fedora-live-workstation.ks)
```
