# set the sysctl so that salt monitors only processes on the master
kernel.pid_ns_hide_child:
  sysctl:
    - present
    - value: 1

# check for libvirtlibvirt:
libvirt:
  pkg:
    - installed
