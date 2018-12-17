#!/bin/sh
VERSION_PREFIX=$1

VERSION=$(git describe --first-parent --match '[[:digit:]]*.[[:digit:]]*')
if [ $? -ne 0 ]
then
    VERSION=$(git rev-parse --short HEAD)
fi

echo $VERSION_PREFIX-$VERSION