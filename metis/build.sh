export TARGET=$1
export LIBRARY_PATH=$TARGET/lib

mkdir $TARGET/lib/ 2>/dev/null
mkdir $TARGET/include 2>/dev/null
mkdir src 2>/dev/null

cd src

src_dir=$(pwd)

# Install metis library
metis_link=http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-4.0.3.tar.gz

metis_version=$(echo $metis_link | sed -n "s/.*\-\([0-9]*\.[0-9]*\.[0-9]*\)\.tar.gz$/\1/p")
# wget $metis_link
# tar zxf "metis-$metis_version.tar.gz"
# cd "metis-$metis_version"
sed -i "s@COPTIONS = @COPTIONS = -fPIC@g" Makefile.in
sed -i "s@LDOPTIONS = @LDOPTIONS = -fPIC@g" Makefile.in
make
cd ..
cp -r lib/* $PREFIX/lub/
cp -r bin/* $PREFIX/bin/
cp -r include/* $PREFIX/include/
