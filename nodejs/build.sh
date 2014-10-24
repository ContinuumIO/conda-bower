#!/bin/bash

mkdir -p $PREFIX/bin
mkdir -p $PREFIX/lib

mv $SRC_DIR/bin/* $PREFIX/bin/
mv $SRC_DIR/lib/* $PREFIX/lib/

if [ `uname` == Darwin ]
then
    POST_LINK=$PREFIX/bin/.nodejs-post-link.sh
    rm $PREFIX/bin/npm
    cp $RECIPE_DIR/post-link.sh $POST_LINK
    chmod +x $POST_LINK
fi
