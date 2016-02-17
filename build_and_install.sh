conda config --set anaconda_upload yes
conda config --add channels http://conda.anaconda.org/basnijholt
conda config --add channels http://conda.anaconda.org/msarahan
conda build metis; conda build scotch; conda build lapack;
conda build mumps_seq;
conda build tinyarray --python 3.5; conda build tinyarray --python 3.4; conda build tinyarray --python 2.7;
conda build kwant --python 3.5; conda build kwant --python 3.4; conda build kwant --python 2.7;

conda build tinyarray; conda build metis; conda build scotch; conda build lapack; conda install metis --use-local --force --y; conda install scotch --use-local --force --y; conda install lapack --use-local --force --y; conda install tinyarray --use-local --force --y; conda build mumps_seq; conda install mumps_seq --use-local --force --y; conda build kwant; conda install kwant --use-local --force --y;
conda uninstall kwant mumps_seq metis lapack scotch tinyarray libgcc libgfortran gcc
