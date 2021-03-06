# Firejail profile for Mendeley
# Description: Academic software for managing and sharing research papers.
# This file is overwritten after every install/update
# Persistent local customizations
include mendeleydesktop.local
# Persistent global definitions
include globals.local

noblacklist ${DOCUMENTS}
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/Mendeley Ltd.
noblacklist ${HOME}/.config/Mendeley Ltd.
noblacklist ${HOME}/.local/share/Mendeley Ltd.
noblacklist ${HOME}/.local/share/data/Mendeley Ltd.
noblacklist ${HOME}/.pki/nssdb

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6,netlink
seccomp
shell none
tracelog

disable-mnt
private-bin mendeleydesktop,python*,env,gconftool-2,which,sh,ln,cat,update-desktop-database
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
