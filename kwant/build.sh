#!/bin/bash
if [[ `uname` == 'Darwin' ]]; then
   cp $RECIPE_DIR/build_mac.conf build.conf
else
   cp $RECIPE_DIR/build_linux.conf build.conf
fi

$PYTHON setup.py install
