#!/bin/sh -

# FIXME just doing fedora for now, should check on uname info and 
# pick the right package manager
if test -x /usr/bin/rpm-ostree ; then
  echo rpm-ostree not supported yet
elif test -x /usr/bin/dnf ; then
  pkgmgr=dnf
  initpkgs="git ansible crudini"
elif test -x /usr/bin/apt ; then
  echo apt not supported yet
else
  echo Unable to determine package manager
  exit 1
fi

if test -z ${pkgmgr+x} ; then
  echo skipping package install
else
  # May need to to more checking in here if pkgmgr types need 
  # different arguments
  sudo $pkgmgr install $initpkgs
fi

# set some git config options
git config --global pull.rebase false

# FIXME: git clone; ssh keys?

