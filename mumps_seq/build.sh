cp $RECIPE_DIR/Makefile.debian.SEQ Makefile.inc
CONDADIR=$PREFIX make all
cp lib/*.a $PREFIX/lib
cp libseq/*.a $PREFIX/lib
cp include/*.h $PREFIX/include
