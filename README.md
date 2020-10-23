
### HpcTelematica
# RayTracing With HPC
Proyecto Hpc Telematica EAFIT 2020 2

## Integrantes:
- Sebastian Bustamante Cardona
- Diego Fernando Martinez
- Juan Jose Parra

## Información de Implementación y Derechos de Autor:

#### Derechos de Auto
El código usado fue sacadao de [tinyraytracer](https://github.com/ssloy/tinyraytracer) del user [ssloy](https://github.com/ssloy) protegido por [WTFPL](https://en.wikipedia.org/wiki/WTFPL). La implementación y modificación para HPC del mismo es de autoridad de los integrantes antes mencionados en la sección Integrantes.

### Implementación
**Ideas preliminares**
En la vida real, somos capaces de ver objetos pues la luz llega a ellos y rebota en muchas direcciones, de las cuales una pequeña cantidad apuntan al ojo humano. Cuando los rayos de luz rebotantes los alcanzan, se forma una imagen visual del objeto.
Normalmente para simular en ambientes virtuales este comportamiento, se usan múltiples técnicas como es la rasterización. El problema con estas técnicas es que no son lo suficientemente exactas, y difieren con el mundo real en varios aspectos, por lo que se pierde información de los rayos de luz. Con la técnica de ray tracing hay menos pérdida de información, provocando una imagen más clara y cercana a la realidad. 
La técnica de ray tracing funciona como los rayos de luz en la vida real, pero contraria a esta, los rayos se calculan desde la cámara, no desde la fuente de luz. Esto se hace para calcular únicamente los rayos que tienen importancia para la escena y evitar operaciones innecesarias.

**Objetivos y alcance**
Objetivo general: Enviar información de una escena a un cluster HPC para obtener como resultado una imagen renderizada por medio de la técnica de Ray Tracing.

**Objetivos específicos**: 
Aplicar paralelismo en la técnica de Ray Tracing.
Efectuar la técnica de Ray Tracing con computación de alto rendimiento.
Obtener una imagen renderizada en alta calidad.

**Logros**
Se logró reducir el tiempo de cómputo a 400ms con 4 nucleos, 100 hilos y con una resolución de 1080p, con calculos MPI y estrategias con OpenMP.
![alt text](https://github.com/Ilianx/HpcTelematica/blob/master/Img/Hpcjpeg.png)

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
