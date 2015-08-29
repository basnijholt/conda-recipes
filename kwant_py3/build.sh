#!/bin/bash

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
   cp $RECIPE_DIR/build.conf build.conf
else
   cp $RECIPE_DIR/build_linux.conf build.conf
fi


$PYTHON setup.py install

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
