## Introducción a los Bucles Combinacionales y Elementos de Memoria

En el diseño de circuitos digitales, los **bucles combinacionales** son secuencias de puertas lógicas donde la salida de una puerta se retroalimenta a su entrada, directa o indirectamente. En el mundo de las FPGAs este tipo de diseño se considera problemático debido a la posibilidad de oscilaciones o estados inestables, sin embargo pueden ser utilizados intencionadamente para crear elementos de memoria, como los **latches** y **flip-flops**.

Este documento explora la implementación de elementos de memoria utilizando bucles combinacionales. Comienza con la memoria más simple que existe y termina con ejemplos de contadores asíncronos y síncronos.

## La Memoria más Simple

La memoria más simple es una OR con una de sus entradas en realimentación con la salida:

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/OR_as_memory.png)  
*Esta es la memoria más simple que existe pero tiene una limitación importante.*  

A este tipo de memoria yo lo llamo "detector de presencia", en el sentido de que una vez que le damos un '1' a la entrada (SET), se encenderá el led y permanecerá así indefinidamente hasta que cortemos la alimentación de todo el circuito.

Necesitamos de algún modo "cortar" a voluntad la realimentación para evitar tener que apagar el circuito (en circunstancias normales esto no tendría sentido) y para solucionarlo añadimos un multiplexor de dos entradas:

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/SR_simplified_OR.png)  
*Latch/báscula SR.*  

Este circuito muestra que la retroalimentación combinacional puede emplearse para conservar un estado, funcionando como un mecanismo elemental de almacenamiento de información.

Una de las principales ventajas de este diseño es que no presenta estados de indeterminación. En otras palabras, si las entradas **Set** y **Reset** permanecen simultáneamente en nivel alto ('1'), la señal **Reset** tiene prioridad, evitando así cualquier oscilación o comportamiento indefinido en el circuito. Esta propiedad aporta una mayor robustez al diseño, especialmente cuando posteriormente se transforme de un *latch* o báscula a un *flip-flop*.

## Nomenclaturas

En España es habitual utilizar el término **báscula** para referirse a los *latches* (literalmente, "pestillos"). A lo largo del texto se emplearán ambos términos de forma indistinta. Lo importante es tener presente que estos dispositivos pertenecen al grupo de las **memorias asíncronas**, ya que su funcionamiento depende del nivel de la señal de control (clock). En cambio, los dispositivos síncronos, cuyo comportamiento está gobernado por los flancos de una señal de reloj en lugar de por los niveles lógicos, reciben el nombre de **flip-flops**.

## Memoria tipo D

Hay muchos tipos de memoria, entre ellas como la que acabamos de ver tipo **Set**-**Reset** (SR), y por nombrar otras están las tipo **D**, **T**, **JK**... Pero la que más nos va a interesar de ahora en adelante es la **tipo D**:

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/Bascula%20o%20flip-flop%20tipo%20D.png)  
*Latch/báscula tipo D y flip-flop tipo D.*  

Cuando vemos un triangulito en la entrada Clock es que es un flip-flop (síncrono), y cuando no lo lleva significa que es un latch o báscula (asíncrono) y suele tener como letras una 'c' (clock) o también 'cp' (clock pulse), o también puede suceder que no lleve nada y se entiende que por descarte que es la entrada clock.

Este tipo de memoria (como concepto y en especial los flip-flops) es muy utilizada a la hora de diseñar memorias, divisores de frecuencia, registros de desplazamiento, contadores, secuenciadores, etc.  

## Distinción entre Flip-Flop y Latch

El siguiente paso es diseñar un latch, pero primero toca explicar cuál es la diferencia entre un latch y un flip-flop:  

Un **latch** es un elemento de memoria sensible al nivel de la señal de control (clock). Cuando el clock está a '1', el latch es **transparente**, es decir, lo que haya en **D** pasa a **Q**. Y cuando el clock lo llevamos a '0', deja de actualizar la salida y conserva el último valor que había en la entrada **D**.

En cambio, un **flip-flop** es un elemento de memoria sensible al flanco de la señal de reloj. Esto significa que sólo captura el valor de la entrada **D** en el instante en que se produce una **transición del clock**, ya sea de subida (0 → 1) o de bajada (1 → 0) según el tipo. Una vez capturado el dato, la salida (Q) permanece constante hasta que se produzca el siguiente flanco de reloj.

## Implementación de un Latch

Considerando la aclaración, presento un esquema de un latch que ilustra mejor el comportamiento de retención de datos. Este circuito memoriza el dato de entrada DATA cuando la señal de reloj (CLOCK) está activa (en alto), y mantiene el último estado cuando CLOCK está inactiva (en bajo). En resumen, el valor (0 ó 1) que haya en DATA pasa a la salida siempre que CLOCK esté a '1' y retiene ese estado al pasar a '0'.

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/true_latch.png)  
*Evolución de latch SR a latch tipo D.*  

## Latch Maestro-Esclavo para Comportamiento por Flanco

A priori, no es posible construir registros de desplazamiento, contadores o secuenciadores con simples latches porque la entrada y salida son transparentes en cierto nivel. La solución es pasar de asíncrono (latch) a síncrono (flip-flop), es decir, que funcione por flanco (ya sea de subida o de bajada).  

* Asíncrono = "Que se propaga, es transparente en cierto nivel"  
* Síncrono  = "Todos comparten la misma señal de control (clock) y es sensible al flanco"  

Para lograr un comportamiento sensible al flanco, similar al de un flip-flop, utilizaremos un **latch maestro-esclavo**. Esta configuración usa dos latches básicos conectados en serie, donde el primer latch (maestro) captura el dato en un nivel del reloj y el segundo latch (esclavo) transfiere ese dato a la salida en el nivel opuesto o flanco del reloj. Esto permite que el cambio de estado ocurra en un flanco específico del reloj, evitando la transparencia del latch simple.  

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/master_slave_latch.png)  
*Latch Maestro-Esclavo, logrando un comportamiento sensible al flanco, es decir, pasa a ser considerado como flip-flop.*  

La configuración "Maestro-Esclavo" está compuesta por dos latches (asíncrono) pero esta configuración tiene de pleno el comportamiento de un flip-flop (síncrono).

## Contador de 4 Bits con Latches Maestro-Esclavo

La aplicación de los latches **maestro-esclavos** (ahora ya es un flip-flop) lo podemos demostrar mediante la construcción de un **contador ascendente de 4 bits**. Al conectar cuatro (o los que quieras) de estos latches maestros-esclavos en cascada, se puede crear un contador que incrementa su valor con cada flanco de reloj. Este tipo de contador, donde los cambios se **propagan** secuencialmente de un flip-flop a otro, se clasifica como **asíncrono**.

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/contador_4bits.png)  
*Contador ascendente de 4 bits implementado con latches maestro-esclavo.*  

Aunque funcional, los contadores asíncronos pueden sufrir de retardos de propagación acumulativos, lo que limita su velocidad y puede causar problemas en sistemas complejos. La alternativa ideal es una arquitectura **síncrona**, donde todos los elementos de memoria cambian de estado simultáneamente con el mismo flanco de reloj, garantizando un comportamiento más predecible y rápido.

## ¿Se Puede Construir un Contador Síncrono con Latches Maestro-Esclavos?

La respuesta es sí, y hay muchas técnicas para construir un contador síncrono con latches maestro-esclavos, que como ya sabes se comporta como un flip-flop convencional. El caso más estándar es usar un sumador binario donde cada bit de salida del sumador se memoriza con un latch maestro-esclavo, y la salida de cada latch se realimenta a una de las entradas del sumador. En el otro lado del sumador simplemente sumamos 1. En este caso, los latches maestro-esclavos sólo se encargan de memorizar la salida del sumador.

![](https://raw.githubusercontent.com/Democrito/latch/refs/heads/main/blob/main/assets/4bits_sincronous_counter_Master-Slave.png)  
*Contador síncrono de 4 bits usando un sumador y memorizando las salidas con latches maestro-esclavos.*  

En la imagen verás que hay dos tipos de bombeo (representado como un corazón), he elegido otra vez el bombeo por nivel, pero funciona igual de bien con un bombeo por pulsos (tics).

## Habilitación de Bucles Combinacionales en Icestudio

Para experimentar con estos diseños en Icestudio, es necesario habilitar explícitamente la opción de "Loops Combinacionales". Se recomienda mantener esta opción deshabilitada por defecto, activándola solo cuando se trabaje intencionadamente con este tipo de circuitos. Existen diferentes métodos para habilitar esta funcionalidad, como se detalla en los siguientes recursos de video [1] [2] (lo encontrarás al final de esta página).

## Conclusión

La exploración de los bucles combinacionales y su aplicación en la creación de latches y flip-flops es fundamental para comprender los fundamentos de la lógica secuencial. Aunque los bucles combinacionales pueden ser una fuente de desafíos en el diseño digital con FPGAs, su uso controlado permite la construcción de elementos de memoria esenciales. La distinción entre latches (sensibles al nivel) y flip-flops (sensibles al flanco) es crucial, y la implementación de latches maestro-esclavo ofrece una vía para lograr un comportamiento de disparo en vez de en niveles, estando al mismo nivel que un flip-flop convencional. Con ellos se puede construir memorias, registros de desplazamiento, contadores, etc. 

## Descarga de los Ejemplos Aquí Utilizados

Tienes todos los ejemplos en la carpeta [Download_ICEs](https://github.com/Democrito/latch/tree/main/Download_ICEs)  

Estoy convencido de que una de las mejores forma de **aprender y comprender** es "**haciendo**", interactuando con los circuitos y ver qué sucede, porque de esta manera puedes sacar tus propias conclusiones. Con la práctica se comprende mucho mejor la teoría.

## Descarga Icestudio

[https://downloads.icestudio.io/](https://downloads.icestudio.io/)

## Referencias

[Foro donde se exploró todo esto](https://groups.google.com/g/fpga-wars-explorando-el-lado-libre/c/EykvQqULFlw)  

[[1] Cómo habilitar Loops Combinacionales en Icestudio (Método 1)](https://www.youtube.com/watch?v=ViIgxPSN4_A)  
[[2] Cómo habilitar Loops Combinacionales en Icestudio (Método 2)](https://www.youtube.com/watch?v=kVQ33be7ZNU)  


