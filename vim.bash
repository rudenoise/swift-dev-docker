#!/bin/bash

set -e

# dirs
mkdir -p ~/.vim/ftdetect
mkdir -p ~/.vim/ftplugin
mkdir -p ~/.vim/syntax

# ftdetect
wget https://raw.githubusercontent.com/apple/swift/master/utils/vim/ftdetect/sil.vim -P ~/.vim/ftdetect
wget https://raw.githubusercontent.com/apple/swift/master/utils/vim/ftdetect/swift.vim -P ~/.vim/ftdetect
wget https://raw.githubusercontent.com/apple/swift/master/utils/vim/ftdetect/swiftgyb.vim -P ~/.vim/ftdetect
# ftplugin
wget https://raw.githubusercontent.com/apple/swift/master/utils/vim/ftplugin/swift.vim -P ~/.vim/ftplugin
wget https://raw.githubusercontent.com/apple/swift/master/utils/vim/ftplugin/swiftgyb.vim -P ~/.vim/ftplugin
# syntax
wget https://raw.githubusercontent.com/apple/swift/master/utils/vim/syntax/sil.vim -P ~/.vim/syntax
wget https://raw.githubusercontent.com/apple/swift/master/utils/vim/syntax/swift.vim -P ~/.vim/syntax
wget https://raw.githubusercontent.com/apple/swift/master/utils/vim/syntax/swiftgyb.vim -P ~/.vim/syntax
