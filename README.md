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
- Correr con el siguiente comando

`$ echo 'cd $PBS_O_WORKDIR ; mpirun -machinefile $PBS_NODEFILE ./tinyraytracer [numero de hilos]' | qsub -l nodes=4:flat -N [nombre]`
- Ejemplo

`$ echo 'cd $PBS_O_WORKDIR ; mpirun -machinefile $PBS_NODEFILE ./tinyraytracer 50' | qsub -l nodes=4:flat -N test`
