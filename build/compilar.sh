#!/bin/sh
find . ! -name 'compilar.sh' ! -name 'tracer' ! -name 'tracerloc' -type f -exec rm -f {} +
find . ! -name 'compilar.sh' ! -name 'tracer' ! -name 'tracerloc' -type d -exec rm -f -r {} +
cmake -D CMAKE_BUILD_TYPE=Debug -DWITH_OPENMP=ON -DCMAKE_C_COMPILER=mpiicc -DCMAKE_CXX_COMPILER=mpiicpc -DOpenMP_CXX_FLAGS="-qopenmp" ..
make
echo 'cd $PBS_O_WORKDIR ; mpirun -machinefile $PBS_NODEFILE ./tinyraytracer' | qsub -l nodes=4:flat -N pipo
qstat



