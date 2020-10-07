

## Partición_Funcional
```
public void generateImage() {
    <T0>
    |    Ray ray; Colour color;                   
    |    double deltaX = 2d / width;
    |    double deltaY = 2d / height;
    </T0>
        <T3>
        | for(int j = 0; j < width; j++) {
        |     <T2>
        |     | for(int i = 0; i < height; i++) {
        |     |        Point p1 = new Point(-1 + i * deltaX, 1 - j * deltaY, -2d);
        |     |        Point p0 = new Point(0, 0, 0);
        |     |        ray = new Ray(p0, p1);
        |     |   <T1>
        |     |   |    color = Scene.intersectRay(ray); 
        |     |   </T1>
        |     |        image[i][j] = color;
        |     |  }
        |     </T2>
        | }
        </T3>
    }
```

## Partición_Funcional
```graphviz
digraph Particion_Funcional{
   
    node [shape = circle];
    T0  -> T3  //[ label = "a" ];
    T3 -> T2
    T3 -> Tf
    T2 -> T1
    T2 -> T3 
    T1 -> T2 
    
}
```
![alt text](https://github.com/Ilianx/HpcTelematica/blob/master/Img/1.png)
---
## Partición_Data

```graphviz
digraph Particion_Data{
    node [shape = rectangle]; Nfs; NFs
    node [shape = circle];
    NFs -> T0  -> T3  //[ label = "a" ];
    T3 -> T2
    T2 -> T1
    T3 -> Tf -> Nfs
    T2 -> T3 
    T1 -> T2  
}
```
![alt text](https://github.com/Ilianx/HpcTelematica/blob/master/Img/2.png)
---
## Comunicación
```graphviz
digraph Comunicacion{
   node [shape = rectangle]; Nfs; NFs
    node [shape = circle];
    NFs -> T0
    T0 -> T3  [ label = "Scene, deltaX, deltaY" ];
    T3 -> T2  [ label = "Scene, deltaX, deltaY  " ];
    T2 -> T1  [ label = "Scene, Ray   " ];
   //regreso
    T2 -> T3  [ label = "pixel[]   " ];
    T1 -> T2  [ label = "pixel   " ];
    T3 -> Tf  [ label = "Img" ]; 
    Tf-> Nfs
}
```
![alt text](https://github.com/Ilianx/HpcTelematica/blob/master/Img/3.png)
---
## Aglomeración
```graphviz
digraph Aglomeracion_data{
   
    node [shape = circle];
    T0 -> T3  [ label = "Scene" ];
    T3 -> T21  [ label = "Scene, deltaX1, deltaY1" ];
    T3 -> T22  [ label = "Scene, deltaX2, deltaY2" ];
    T3 -> T23  [ label = "Scene, deltaX3, deltaY3" ];
    T21 -> T11  [ label = "Scene, Ray1   " ];
    T21 -> T12  [ label = "Scene, Ray2   " ];
    T21 -> T13  [ label = "Scene, Ray3 " ];
}
```
![alt text](https://github.com/Ilianx/HpcTelematica/blob/master/Img/4.png)
---
## M(apeo)
```graphviz
digraph Aglomeracion_data{
   
    node [shape = circle];
    node [shape = rectangle];

    T0 -> T21  [ label = "deltaX1, deltaY1" ];
    T0 -> T22  [ label = "deltaX2, deltaY2" ];
    T0 -> T23  [ label = "deltaX3, deltaY3" ];
    T0 -> T11  [ label = "Scene" ];
    T0 -> T12  [ label = "Scene" ];
    T0 -> T13  [ label = "Scene" ];
    T21 -> T11  [ label = "Ray1" ];
    T22 -> T12  [ label = "Ray2" ];
    T23 -> T13  [ label = "Ray3" ];
}
```
![alt text](https://github.com/Ilianx/HpcTelematica/blob/master/Img/5.png)
