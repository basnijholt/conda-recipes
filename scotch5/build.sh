#!/bin/sh
# see http://conda.pydata.org/docs/build.html for hacking instructions.

# Required apt-get install zlib1g-dev libc-dev on bare linux

cd src/
echo 'prefix = $PREFIX' > Makefile.inc
echo '' >> Makefile.inc
if [ `uname` == "Darwin" ]; then
  cat Make.inc/Makefile.inc.x86-64_pc_linux2 | \
    sed -e "s/-lz -lm -lrt/-lz -lm/" | \
    sed -e "s/-DSCOTCH_PTHREAD//" | \
    sed -e "s/-DCOMMON_PTHREAD//" | \
    sed -e "s/= -O3/= -fPIC -O3/" >> \
    Makefile.inc
else
  # cp $RECIPE_DIR/Makefile.inc.i686_pc_linux2_clean Makefile.inc
  cp Make.inc/Makefile.inc.x86-64_pc_linux2 Makefile.inc
  sed -i "s@CLIBFLAGS\t=@CLIBFLAGS\t= -fPIC@g" Makefile.inc
  sed -i 's#-l$(SCOTCHLIB)errexit#-l$(SCOTCHLIB)errexit -lm#g' esmumps/Makefile
  sed -i "s#-lz -lm -lrt#-lz -lm -lrt -lpthread#g" Makefile.inc

fi
make | tee make.log 2>&1
cd ..

# install.
mkdir -p $PREFIX/lib/
cp lib/* $PREFIX/lib/
mkdir -p $PREFIX/bin/
cp bin/* $PREFIX/bin/
mkdir -p $PREFIX/include/
cp include/* $PREFIX/include/

# vim: set ai et nu:
