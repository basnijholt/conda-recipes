cd src/
if [[ `uname` == 'Darwin' ]]; then
   cp $RECIPE_DIR/Makefile.inc.i686_mac_darwin8 Makefile.inc
else
   cp $RECIPE_DIR/Makefile.inc.i686_pc_linux2 Makefile.inc
fi
make esmumps
cd ..
cp -r lib $PREFIX/
cp -r bin $PREFIX/
cp -r include $PREFIX/
