#!/bin/bash
make config
make
# install.
mkdir -p $PREFIX/lib/
cp build/Darwin-x86_64/libmetis/libmetis.a $PREFIX/lib/
mkdir -p $PREFIX/bin/
cp build/Darwin-x86_64/programs/cmpfillin $PREFIX/bin/
cp build/Darwin-x86_64/programs/gpmetis $PREFIX/bin/
cp build/Darwin-x86_64/programs/graphchk $PREFIX/bin/
cp build/Darwin-x86_64/programs/m2gmetis $PREFIX/bin/
cp build/Darwin-x86_64/programs/ndmetis $PREFIX/bin/
cp build/Darwin-x86_64/programs/mpmetis $PREFIX/bin/
mkdir -p $PREFIX/include/
cp include/metis.h $PREFIX/include/
