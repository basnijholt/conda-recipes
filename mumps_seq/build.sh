# Required 'apt-get install zlib1g-dev libc-dev' on bare linux, but zlibg1 was
# installed to use for scotch, so not sure if needed for mumps too.

if [ `uname` == "Darwin" ]; then
  cp $RECIPE_DIR/Makefile.debian.SEQ_mac Makefile.inc
else
  cp $RECIPE_DIR/Makefile.debian.SEQ Makefile.inc
  sed -i "s@^CC =.*@CC = gcc -fPIC@g" Makefile.inc
  sed -i "s@^FC =.*@FC = gfortran -fPIC@g" Makefile.inc
  sed -i "s@^FL =.*@FL = gfortran -fPIC@g" Makefile.inc
fi

CONDADIR=$PREFIX make all
cp lib/*.a $PREFIX/lib
cp libseq/*.a $PREFIX/lib
cp include/*.h $PREFIX/include
