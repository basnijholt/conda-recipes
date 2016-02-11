
if [ `uname` == "Darwin" ]; then
  cp $RECIPE_DIR/Makefile.debian.SEQ Makefile.inc
else
  cp Make.inc/Makefile.gfortran.SEQ Makefile.inc
  sed -i "s@^#SCOTCHDIR.*@SCOTCHDIR = $src_dir/$scotch_dir@g" Makefile.inc
  sed -i 's@^#LSCOTCH.*@LSCOTCH    = -L$(SCOTCHDIR)/lib -lesmumps@g' Makefile.inc
  sed -i "s@^#LMETISDIR.*@LMETISDIR = $src_dir/metis-$metis_version@g" Makefile.inc
  sed -i 's@^#LMETIS.*@LMETIS    = -L$(LMETISDIR) -lmetis@g' Makefile.inc
  sed -i "s@^ORDERINGSF =.*@ORDERINGSF = -Dscotch -Dmetis -Dpord@g" Makefile.inc
  sed -i "s@^CC =.*@CC = gcc -fPIC@g" Makefile.inc
  sed -i "s@^FC =.*@FC = gfortran -fPIC@g" Makefile.inc
  sed -i "s@^FL =.*@FL = gfortran -fPIC@g" Makefile.inc
fi

CONDADIR=$PREFIX make all
cp lib/*.a $PREFIX/lib
cp libseq/*.a $PREFIX/lib
cp include/*.h $PREFIX/include
