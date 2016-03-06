#!/bin/bash
cp $RECIPE_DIR/build.conf build.conf
sed -i -e "s:PREFIX:$PREFIX:g" build.conf
$PYTHON setup.py build
$PYTHON setup.py install
