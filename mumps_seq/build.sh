cp Make.inc/Makefile.debian.SEQ Makefile.inc
make
cp lib/*.a $PREFIX/lib
cp libseq/*.a $PREFIX/lib
cp include/*.h $PREFIX/include
