## Introducción a los Bucles Combinacionales y Elementos de Memoria

En el diseño de circuitos digitales, los **bucles combinacionales** son secuencias de puertas lógicas donde la salida de una puerta se retroalimenta a su entrada, directa o indirectamente. En el mundo de las FPGAs este tipo de diseño se considera problemático debido a la posibilidad de oscilaciones o estados inestables, sin embargo pueden ser utilizados intencionadamente para crear elementos de memoria, como los **latches** y **flip-flops**.  

Este documento explora la implementación de elementos de memoria utilizando bucles combinacionales. Comienza con la memoria más simple que existe y termina con ejemplos de contadores asíncronos y síncronos.  

## La Memoria más Simple

La memoria más simple es una puerta OR con una de sus entradas en realimentación con la salida:  

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/OR_as_memory.png)  
*Esta es la memoria más simple que existe pero tiene una limitación importante.*  

A este tipo de memoria la denomino: "detector de presencia", en el sentido de que una vez que le damos un '1' a la entrada (SET), se encenderá el led y permanecerá así indefinidamente hasta que cortemos la alimentación de todo el circuito.  

Necesitamos de algún modo "cortar" a voluntad la realimentación para evitar tener que apagar el circuito (en circunstancias normales esto no tendría sentido) y para solucionarlo añadimos un multiplexor de dos entradas:  

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/SR_simplified_OR.png)  
*Latch/báscula SR.*  

Este circuito muestra que la retroalimentación combinacional puede emplearse para conservar un estado, funcionando como un mecanismo elemental de almacenamiento de información.

Una de las principales ventajas de este diseño es que no presenta estados de indeterminación. En otras palabras, si las entradas **Set** y **Reset** permanecen simultáneamente en nivel alto ('1'), la señal **Reset** tiene prioridad, evitando así cualquier oscilación o comportamiento indefinido en el circuito. Esta propiedad aporta una mayor robustez al diseño, especialmente cuando posteriormente se transforme de un *latch/báscula* a un *flip-flop*.  

## Nomenclaturas

En España es habitual utilizar el término **báscula** para referirse a los **latches** (literalmente, "pestillos"). A lo largo del texto se emplearán ambos términos de forma indistinta. Lo importante es tener presente que estos dispositivos pertenecen al grupo de las **memorias asíncronas**.  

## Memoria tipo D

Hay muchos tipos de memoria, entre ellas como la que acabamos de ver tipo **Set**-**Reset** (SR), y por nombrar otras están las tipo **D**, **T**, **JK**... Pero la que más nos va a interesar de ahora en adelante es la **tipo D**:

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/Bascula%20o%20flip-flop%20tipo%20D.png)  
*Latch/báscula tipo D y flip-flop tipo D.*  

Cuando vemos un triangulito en la entrada Clock es que es un flip-flop (síncrono), y cuando no lo lleva significa que es un latch o báscula (asíncrono) y suele tener una 'c' (clock) o bien 'cp' (clock pulse), o también puede suceder que no lleve nada y se entiende por descarte que es la entrada de reloj.  

## Distinción entre Flip-Flop y Latch

Es habitual encontrar documentación técnica en la que el término *flip-flop* se utiliza de forma genérica para referirse a cualquier elemento con capacidad de almacenamiento, incluso cuando, desde un punto de vista técnico se trata de un *latch*. Este uso impreciso de la terminología puede generar confusión. Por ello, a lo largo de este documento se distinguirán claramente ambos conceptos y se empleará la nomenclatura adecuada en cada caso.  

El siguiente paso es diseñar un latch, pero primero toca explicar cuál es la diferencia entre un latch y un flip-flop:  

Un **latch tipo D** (imagen de arriba, izquierda) es un elemento de memoria sensible al nivel lógico de la señal de control (clock). Cuando el clock está a '1', el latch es **transparente**, es decir, lo que haya en **D** pasa a **Q**. Y cuando el clock lo llevamos a '0', deja de actualizarse y conserva el último valor que había en la entrada **D**.  

En cambio, un **flip-flop tipo D** (última imagen de arriba, derecha) es un elemento de memoria sensible al flanco de la señal de reloj. Esto significa que sólo captura el valor de la entrada **D** en el instante en que se produce una **transición del clock**, ya sea de subida (0 → 1) o de bajada (1 → 0) según el tipo. Una vez capturado el dato, la salida (Q) permanece constante hasta que se produzca el siguiente flanco de reloj.  

## Diseño de un Latch

Considerando la aclaración, presento un esquema de un **Latch tipo D** que ilustra mejor el comportamiento de retención de datos. Este circuito memoriza el dato de entrada DATA cuando la señal de reloj (CLOCK) está en alto, y mantiene el último estado cuando CLOCK está en bajo. En resumen, el valor (0 ó 1) que haya en DATA pasa a la salida siempre que CLOCK esté a '1' y retiene ese estado al pasar a '0'.  

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/true_latch.png)  
*Evolución de latch SR a latch tipo D.*  

## Latch Maestro-Esclavo para Comportamiento por Flanco

A priori, no es posible construir registros de desplazamiento, divisor de frecuencia, contadores o secuenciadores con latches porque la entrada y salida son transparentes en cierto nivel lógico. La solución es pasar de asíncrono (latch) a síncrono (flip-flop), es decir, que funcione por flanco (ya sea de subida o de bajada).  

* Asíncrono = Que se propaga, es transparente en cierto nivel lógico  
* Síncrono  = Todos comparten la misma señal de control (clock) y es sensible al flanco (de subida o de bajada)  

Para lograr un comportamiento sensible al flanco (como en un flip-flop) utilizaremos un **latch maestro-esclavo**. Esta configuración usa dos latches básicos conectados en serie, donde el primer latch (maestro) captura el dato en un nivel del reloj y el segundo latch (esclavo) transfiere ese dato a la salida en el nivel opuesto o flanco del reloj. Esto permite que el cambio de estado ocurra en un flanco específico del reloj, evitando la transparencia del latch simple.  

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/master_slave_latch.png)  
*Latch Maestro-Esclavo, logrando un comportamiento sensible al flanco, es decir, pasa a ser considerado como flip-flop.*  

La configuración "Maestro-Esclavo" está compuesta por dos latches (asíncrono) pero esta configuración tiene el idéntico comportamiento de un flip-flop tipo D (síncrono).

## Contador de 4 Bits con Latches Maestro-Esclavo

La aplicación de los latches **maestro-esclavos** (ahora ya es un flip-flop tipo D en toda regla, es decir, síncrono o sensible al flaco) lo podemos demostrar mediante la construcción de un **contador ascendente de 4 bits**.

Vamos a crear un contador de 4 bits de la forma más sencilla posible. Veamos el concepto de *Divisor de frecuencia*.

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/Divider2.png)
*Divisor de frecuencia. Divide la frecuencia entre 2.*  

Para crear el divisor de frecuencia (divide la frecuencia a la mitad) tenemos que conectar la salida **/Q** a **D**, esto provocará que la frecuencia de entrada que entra por el **clock** salga dividida por la mitad en la salida **Q**.  

Al conectar cuatro (o los que desees) de estos latches maestros-esclavos en cascada con la configuración de dividor de frecuencia, se puede crear un contador que incrementa su valor con cada flanco de reloj:  

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/contador_4bits.png)  
*Contador ascendente de 4 bits implementado con latches maestro-esclavo.*  

Este tipo de contador, en el que los cambios de estado se **propagan** de manera secuencial de un *flip-flop* al siguiente, se clasifica como un **contador asíncrono**. Es importante no confundir el funcionamiento interno de cada elemento con la arquitectura global del contador. Aunque cada *flip-flop* está construido internamente mediante una configuración maestro-esclavo y, por tanto, presenta un comportamiento síncrono, el conjunto se considera asíncrono porque únicamente el primer *flip-flop* recibe directamente la señal de reloj. El resto de los dispositivos se disparan utilizando la salida del *flip-flop* anterior como señal de sincronización, lo que provoca una propagación escalonada de los cambios de estado.  

Aunque funcional, los contadores asíncronos pueden sufrir de retardos de propagación acumulativos, lo que limita su velocidad y puede causar problemas en sistemas complejos. La alternativa ideal es una arquitectura **síncrona**, donde todos los elementos de memoria cambian de estado simultáneamente con el mismo flanco de reloj, garantizando un comportamiento más predecible y rápido (síncrono).  

## ¿Se Puede Construir un Contador Síncrono con Latches Maestro-Esclavos?

La respuesta es **sí**, y hay muchas técnicas para construir un contador síncrono con latches maestro-esclavos, que como ya sabes se comporta como un flip-flop convencional. El caso más estándar es usar un sumador binario donde cada bit de salida del sumador se memoriza con latches maestro-esclavos, y la salida de los latches maesto-esclavos se realimenta a una de las entradas del sumador. En el otro lado del sumador simplemente sumamos 1. En este caso, los latches maestro-esclavos sólo se encargan de memorizar la salida del sumador.  

![](https://raw.githubusercontent.com/Democrito/latch/refs/heads/main/blob/main/assets/4bits_sincronous_counter_Master-Slave.png)  
*Contador síncrono de 4 bits usando un sumador y memorizando las salidas con latches maestro-esclavos.*  

En la imagen verás que hay dos tipos de bombeo (representados con un corazón), he elegido otra vez el bombeo de niveles lógicos (ondas cuadradas), pero funciona igual de bien con un bombeo de pulsos (tics).  

## Habilitación de Bucles Combinacionales en Icestudio

Para experimentar con estos diseños en Icestudio, es necesario habilitar explícitamente la opción de "Loops Combinacionales". Se recomienda mantener esta opción deshabilitada por defecto, activándola sólo cuando se trabaje intencionadamente con este tipo de circuitos. Existen diferentes métodos para habilitar esta funcionalidad, como se detalla en los siguientes recursos de video [[1]](https://www.youtube.com/watch?v=ViIgxPSN4_A) y [[2]](https://www.youtube.com/watch?v=kVQ33be7ZNU), también lo encontrarás al final de esta página.  

## Conclusión

La exploración de los bucles combinacionales y su aplicación en la creación de latches y flip-flops es fundamental para comprender los fundamentos de la lógica secuencial. Aunque los bucles combinacionales pueden ser una fuente de desafíos en el diseño digital con FPGAs, su uso controlado permite la construcción de elementos de memoria esenciales. La distinción entre latches (sensibles al nivel) y flip-flops (sensibles al flanco) es crucial, y la implementación de latches maestro-esclavo ofrece una vía para lograr un comportamiento de disparo en vez de en niveles, estando al mismo nivel que un flip-flop convencional. Con ellos se puede construir memorias, registros de desplazamiento, contadores, etc. 

## Descarga los Ejemplos Aquí Utilizados

Tienes todos los ejemplos en la carpeta [Download_ICEs](https://github.com/Democrito/latch/tree/main/Download_ICEs)  

Estoy convencido de que una de las mejores forma de **aprender y comprender** es "**haciendo**", interactuando con los circuitos y ver qué sucede, porque de esta manera puedes sacar tus propias conclusiones. Te presente que con la práctica se comprende mucho mejor la teoría.  

## Descarga Icestudio

[https://downloads.icestudio.io/](https://downloads.icestudio.io/)  

## Referencias

[Foro donde se exploró todo esto](https://groups.google.com/g/fpga-wars-explorando-el-lado-libre/c/EykvQqULFlw)  

[[1] Cómo habilitar Loops Combinacionales en Icestudio (Método 1)](https://www.youtube.com/watch?v=ViIgxPSN4_A)  
[[2] Cómo habilitar Loops Combinacionales en Icestudio (Método 2)](https://www.youtube.com/watch?v=kVQ33be7ZNU)  


