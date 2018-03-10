#!/bin/bash

./dpkg-scanpackages debs /dev/null > Packages
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2

git add -A
git commit -m "Updated by scrypt"
git push -u origin master