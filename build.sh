#!/bin/bash
for i in bin include lib share; do
    mv $SRC_DIR/$i $PREFIX/$i
done
