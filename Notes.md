# systemd vs sysvinit:

## systemd:
Systemd is the newest one and less masture than sysvinit. It provides a lot more features than sysvinit but the usefulness of this features with respect to an init system remains unclear. Most big distributions use systemd like Ubuntu, Fedora and etc.
Systemd is more granular as to how processes are controlled. Systemctl is used to manage these services and you can define a service using a *.service file in the systemd directory.
One of the bigger controversies pertaining to systemd seems that it included a DNS Resolver in the init process that is very exploitable and not considered core functionality.
#[https://www.reddit.com/r/redhat/comments/qefrhm/systemctl_vs_systemd_vs_service/]
It tries to do everything and thats a problem. But at its core as a init process, it is pretty good.

