#!/bin/bash

./dpkg-scanpackages debs /dev/null > Packages
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2