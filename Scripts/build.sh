#!/usr/bin/bash

which make >/dev/null 2>&1 || {
    echo "\`\`make'' command not found, please install it first"
    exit 1
}

rootdir=$(realpath ${0%%/*}/..)
pandoctools=$rootdir/Scripts/pandoctools

for chapter in Dummy Booting
do
    [ -d $rootdir/$chapter ] || {
        echo "$rootdir/$chapter doesn't exist, build next"
        continue
    }

    echo "Build \`\`$chapter'' into PDF"
    make DOCTOOLS=$pandoctools			\
         TARGET=$chapter ROOTDIR=$rootdir	\
         TEXFONTPATH=$pandoctools/fonts		\
         RESOURCEPATH="--resource-path=$rootdir/$chapter" DEBUG=y
done
