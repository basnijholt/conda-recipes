if [[ `uname` == 'Darwin' ]]; then
   cp $RECIPE_DIR/Makefile.debian.SEQ_osx Makefile.inc
else

   cp $RECIPE_DIR/Makefile.debian.SEQ_linux Makefile.inc
fi
echo -e "PREFIX = $PREFIX\n$(cat Makefile.inc)" > Makefile.inc
make all
cp lib/*.a $PREFIX/lib
cp libseq/*.a $PREFIX/lib
cp include/*.h $PREFIX/include
