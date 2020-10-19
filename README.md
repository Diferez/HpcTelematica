# HpcTelematica
Proyecto Hpc Telematica EAFIT 2020 2

### RayTracing With HPC

## Integrantes:
- Sebastian Bustamante Cardona
- Diego Fernando Martinez
- Juan Jose Parra

## Uso:
- Compilar corriendo la script "compilar.sh" en el directorio /build

`$ bash compilar.sh`
- Correr de la siguiente forma

`$ echo 'cd $PBS_O_WORKDIR ; mpirun -machinefile $PBS_NODEFILE ./tinyraytracer [numero de hilos]' | qsub -l nodes=4:flat -N [nombre]`

`$ echo 'cd $PBS_O_WORKDIR ; mpirun -machinefile $PBS_NODEFILE ./tinyraytracer [width] [height]' | qsub -l nodes=4:flat -N [nombre]`

`$ echo 'cd $PBS_O_WORKDIR ; mpirun -machinefile $PBS_NODEFILE ./tinyraytracer [width] [height] [numero de hilos]' | qsub -l nodes=4:flat -N [nombre]`

- Ejemplo

`$ echo 'cd $PBS_O_WORKDIR ; mpirun -machinefile $PBS_NODEFILE ./tinyraytracer 50' | qsub -l nodes=4:flat -N test`

`$ echo 'cd $PBS_O_WORKDIR ; mpirun -machinefile $PBS_NODEFILE ./tinyraytracer 1920 1080' | qsub -l nodes=4:flat -N test`

`$ echo 'cd $PBS_O_WORKDIR ; mpirun -machinefile $PBS_NODEFILE ./tinyraytracer 1920 1080 50' | qsub -l nodes=4:flat -N test`

