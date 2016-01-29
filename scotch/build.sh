cd src/
if [[ `uname` == 'Darwin' ]]; then
   cp Make.inc/Makefile.inc.i686_mac_darwin8 Makefile.inc
else
   cp Make.inc/Makefile.inc.i686_pc_linux2 Makefile.inc
fi
make
cd ..
mkdir -p $PREFIX/lib/
cp lib/* $PREFIX/lib/
mkdir -p $PREFIX/bin/
cp bin/* $PREFIX/bin/
mkdir -p $PREFIX/include/
cp include/* $PREFIX/include/
