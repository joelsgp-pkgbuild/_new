#!/bin/bash
set -e

scriptdir="$(dirname $0)"
templatedir="$scriptdir/template"
newname=$1
newdir="$(pwd)/$newname"

mkdir "$newdir"
cd "$templatedir"
cp -t "$newdir" .gitignore .SRCINFO PKGBUILD

cd "$newdir"
git init --initial-branch master
git remote add aur "ssh://aur@aur.archlinux.org/$newname.git"
