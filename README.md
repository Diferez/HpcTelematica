
### HpcTelematica
# RayTracing With HPC
Proyecto Hpc Telematica EAFIT 2020 2

## Integrantes:
- Sebastian Bustamante Cardona
- Diego Fernando Martinez
- Juan Jose Parra

## Información de Implementación:
El código usado fue sacadao de [tinyraytracer](https://github.com/ssloy/tinyraytracer) del user [ssloy](https://github.com/ssloy) protegido por [WTFPL](https://en.wikipedia.org/wiki/WTFPL). La implementación y modificación para HPC del mismo es de autoridad de los integrantes antes mencionados en la sección Integrantes.

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

## Videos integrantes:

- Sebastian Bustamante Cardona

- Diego Fernando Martinez

- Juan Jose Parra
