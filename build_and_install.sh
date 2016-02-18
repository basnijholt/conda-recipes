conda config --set anaconda_upload yes
conda config --add channels http://conda.anaconda.org/basnijholt
conda build metis; conda build scotch; conda build lapack;
conda build mumps_seq;
conda build tinyarray --python 3.5; conda build tinyarray --python 3.4; conda build tinyarray --python 2.7;
conda build kwant --python 3.5; conda build kwant --python 3.4; conda build kwant --python 2.7;

conda build metis; conda build scotch; conda build mumps_seq; conda build tinyarray --python 3.5; conda build tinyarray --python 3.4; conda build tinyarray --python 2.7; conda build kwant --python 3.5; conda build kwant --python 3.4; conda build kwant --python 2.7;

conda uninstall kwant mumps_seq metis lapack scotch scotch5 tinyarray libgcc libgfortran gcc