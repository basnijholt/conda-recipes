cp $RECIPE_DIR/Makefile.debian.SEQ_osx Makefile.inc
make
cp lib/* $PREFIX/lib/
cp libseq/* $PREFIX/lib/
cp include/* $PREFIX/include/
