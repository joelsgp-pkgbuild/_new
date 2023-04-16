#!/bin/bash
set -eux

scriptdir="$(dirname $0)"
templatedir="$scriptdir/templates"
newname=$1
newdir="$(pwd)/$newname"

# todo fix
mkdir "$newdir"
cd "$templatedir"
cp -t "$newdir" .gitignore .SRCINFO PKGBUILD

cd "$newdir"
git init --initial-branch master
git remote add aur "ssh://aur@aur.archlinux.org/$newname.git"
