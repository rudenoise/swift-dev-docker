#!/bin/bash

set -e

# get the gz
wget https://swift.org/builds/swift-4.0.3-release/ubuntu1604/swift-4.0.3-RELEASE/swift-4.0.3-RELEASE-ubuntu16.04.tar.gz
# get the sig
wget https://swift.org/builds/swift-4.0.3-release/ubuntu1604/swift-4.0.3-RELEASE/swift-4.0.3-RELEASE-ubuntu16.04.tar.gz.sig

# get the gpg keys
gpg --keyserver hkp://pool.sks-keyservers.net \
      --recv-keys \
      '7463 A81A 4B2E EA1B 551F  FBCF D441 C977 412B 37AD' \
      '1BE1 E29A 084C B305 F397  D62A 9F59 7F4D 21A5 6D5F' \
      'A3BA FD35 56A5 9079 C068  94BD 63BC 1CFE 91D3 06C6' \
      '5E4D F843 FB06 5D7F 7E24  FBA2 EF54 30F0 71E1 B235' \
      '8513 444E 2DA3 6B7C 1659  AF4D 7638 F1FB 2B2B 08C4'

# refresh the keys
gpg --keyserver hkp://pool.sks-keyservers.net --refresh-keys Swift

# gpg verify
gpg --verify swift-4.0.3-RELEASE-ubuntu16.04.tar.gz.sig swift-4.0.3-RELEASE-ubuntu16.04.tar.gz

# extract
tar -zxvf swift-4.0.3-RELEASE-ubuntu16.04.tar.gz

# tidy
rm swift-4.0.3-RELEASE-ubuntu16.04.tar*

# setup vim
./vim.bash

# move tools and add to path
mv swift-4.0.3-RELEASE-ubuntu16.04/usr ~/swift
rm -fr swift-4.0.3-RELEASE-ubuntu16.04

echo "PATH=$PATH:~/swift/bin" >> ~/.bashrc
