#!/bin/sh -

# FIXME just doing fedora for now, should check on uname info and 
# pick the right package manager
pkgmgr=dnf
initpkgs="git ansible crudini"

sudo $pkgmgr install $initpkgs

# FIXME: git clone; ssh keys?

