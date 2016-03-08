echo $MKLROOT

if [ -z $MKLROOT ]; then
  echo "MKL cannot be found";
  exit 10;
fi

cd $MKLROOT/tools/builder
make libintel64 threading=sequential name=$PREFIX/lib/libourmkl_seq export=$RECIPE_DIR/blas_lapack_list
cd -
