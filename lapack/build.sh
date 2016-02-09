#!/bin/sh
# see http://conda.pydata.org/docs/build.html for hacking instructions.

# Patch.
sed -e "s/OPTS     \= -O2/OPTS     \=\ -O2\ -fPIC/g" \
	INSTALL/make.inc.gfortran | \
	sed -e "s/NOOPT    \= -O0/NOOPT    \= -O0 -fPIC/g" > \
	make.inc

# Build BLAS.
cd BLAS/SRC
make | tee make.log 2>&1

# Build LAPACK.
cd ../../SRC
make | tee make.log 2>&1

# Install.
cd ..
mkdir -p $PREFIX/lib
cp librefblas.a $PREFIX/lib/libblas.a
cp liblapack.a $PREFIX/lib/liblapack.a

# vim: set ai et nu:
