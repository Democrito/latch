## Introducción a los Bucles Combinacionales y Elementos de Memoria

En el diseño de circuitos digitales, los **bucles combinacionales** son secuencias de puertas lógicas donde la salida de una puerta se retroalimenta a su entrada, directa o indirectamente. Aunque a menudo se consideran problemáticos debido a la posibilidad de oscilaciones o estados inestables, pueden ser utilizados intencionadamente para crear elementos de memoria, como los **latches** y **flip-flops**.

Este documento explora la implementación de elementos de memoria utilizando bucles combinacionales.

## Implementaciones Iniciales de Latches

La memoria más simple es una OR con una de sus entradas en realimentación con la salida:

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/OR_as_memory.png)
*Esta es la memoria más simple que existe pero tiene una limitación importante.*

Este tipo de memoria yo lo llamo "detector de presencia", en el sentido de que una vez que le damos un 1 a la entrada, permanecerá así indefinidamente hasta que cortemos la alimentación de todo el circuito.

Necesitamos de algún modo "cortar" a voluntad esa realimentación sin necesidad de tener que apagar el circuito y para ello nos ayudaremos de un multiplexor de dos entradas:

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/SR_simplified_OR.png)
*Báscula SR simplificado con una puerta OR.*

Seguramente se podría simplificar un poco más a nivel de puertas lógicas para evitar un multiplexor, pero se trata de entender el concepto de la forma más simple.

Estos circuitos demuestran cómo la retroalimentación combinacional puede ser utilizada para retener un estado, actuando como una forma básica de memoria.

## Distinción entre Flip-Flop y Latch

El siguiente paso es diseñar un latch, pero primero vamos a explicar cuál es la diferencia entre un latch y un flip-flop:  

Un **latch** es un elemento de memoria sensible al nivel de la señal de control (clock). Cuando el clock está a 1, el latch es **transparente**, es decir, la salida (Q) sigue continuamente el valor presente en la entrada de datos (D). Cuando el clock pasa a 0, deja de actualizar la salida y conserva el último valor que había en la entrada.

En cambio, un **flip-flop** es un elemento de memoria sensible al flanco de la señal de reloj. Esto significa que solo captura el valor de la entrada (D) en el instante en que se produce una **transición del clock**, ya sea de subida (0 → 1) o de bajada (1 → 0), según el tipo de flip-flop. Una vez capturado el dato, la salida permanece constante hasta que se produzca el siguiente flanco de reloj.

## Implementación de un Latch

Considerando la aclaración, presento un esquema de un latch que ilustra mejor el comportamiento de retención de datos. Este circuito memoriza el dato de entrada ('DATA') cuando la señal de reloj ('CLOCK') está activa (en alto), y mantiene el último estado cuando 'CLOCK' está inactiva. Si 'DATA' es 1 y 'CLOCK' se activa, la salida se pone a 1. Si 'DATA' es 0 y 'CLOCK' se activa, la salida se pone a 0.

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/true_latch.png)
*Esquema de un Latch "verdadero".*

## Latch Maestro-Esclavo para Comportamiento por Flanco

Para lograr un comportamiento sensible al flanco, similar al de un flip-flop, se puede construir un **latch maestro-esclavo**. Esta configuración utiliza dos latches básicos conectados en serie, donde el primer latch (maestro) captura el dato en un nivel del reloj y el segundo latch (esclavo) transfiere ese dato a la salida en el nivel opuesto o flanco del reloj. Esto permite que el cambio de estado ocurra en un flanco específico del reloj, evitando la transparencia del latch simple.

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/master_slave_latch.png)
*Latch Maestro-Esclavo, logrando un comportamiento sensible al flanco.*

## Contador de 4 Bits con Latches Maestro-Esclavo

La aplicación de los latches maestro-esclavo lo podemos demostrar mediante la construcción de un **contador ascendente de 4 bits**. Al conectar cuatro (o los que quieras) de estos latches en cascada, se puede crear un contador que incrementa su valor con cada flanco de reloj. Este tipo de contador, donde los cambios se propagan secuencialmente de un latch a otro, se clasifica como **asíncrono**.

![](https://github.com/Democrito/latch/blob/main/blob/main/assets/contador_4bits.png)
*Contador ascendente de 4 bits implementado con latches maestro-esclavo.*

Aunque funcional, los contadores asíncronos pueden sufrir de retardos de propagación acumulativos, lo que limita su velocidad y puede causar problemas en sistemas complejos. La alternativa ideal es una arquitectura **síncrona**, donde todos los elementos de memoria cambian de estado simultáneamente con el mismo flanco de reloj, garantizando un comportamiento más predecible y rápido.

## ¿Se Puede Construir un Contador Síncrono con Latch?

La respuesta es sí, pero se sale fuera del temario por esta sencilla razón: Hay muchas técnicas para construir un contador síncrono con latch maestro-esclavo (como ya sabes se comporta como un flip-flop convencional), dependiendo de la velocidad de respuesta deseada (máxima frecuencia de contaje). El caso más estándar es usar un sumador binario donde cada bit de salida se registraría (memoriza esa salida) con un latch maestro-esclavo y se realimentaría al sumador. En el otro lado del sumador simplemente sumamos 1. En este caso, los latch maestro-esclavos simplemente memoriza la salida del contador, un latch maestro-esclavo por bit.

![](https://raw.githubusercontent.com/Democrito/latch/refs/heads/main/blob/main/assets/4bits_sincronous_counter_Master-Slave.png)
*Contador síncrono de 4 bits usando un sumador y registrando la salida con latch maestro-esclavo.*

En la imagen podemos observar que hay dos tipos de bombeo (frecuencia de salida), he elegido otra vez el bombeo por nivel, pero funciona igual de bien con un bombeo por pulsos (tics).

## Habilitación de Bucles Combinacionales en Icestudio

Para experimentar con estos diseños en Icestudio, es necesario habilitar explícitamente la opción de "Loops Combinacionales". Se recomienda mantener esta opción deshabilitada por defecto, activándola solo cuando se trabaje intencionadamente con este tipo de circuitos. Existen diferentes métodos para habilitar esta funcionalidad, como se detalla en los siguientes recursos de video [2] [3]:

## Conclusión

La exploración de los bucles combinacionales y su aplicación en la creación de latches y flip-flops es fundamental para comprender los fundamentos de la lógica secuencial. Aunque los bucles combinacionales pueden ser una fuente de desafíos en el diseño digital, su uso controlado permite la construcción de elementos de memoria esenciales. La distinción entre latches (sensibles al nivel) y flip-flops (sensibles al flanco) es crucial, y la implementación de latches maestro-esclavo ofrece una vía para lograr un comportamiento de disparo en vez de en niveles.

## Descarga de los Ejemplos Aquí Utilizados

Tienes todos los ejemplos en la carpeta [Download_ICEs](https://github.com/Democrito/latch/tree/main/Download_ICEs)  

Yo creo que una de las mejores forma de **aprender y comprender** es "**haciendo**", interactuando con los circuitos y ver qué sucede, porque de esta manera puedes sacar tus propias conclusiones.

## Descarga Icestudio

[https://downloads.icestudio.io/](https://downloads.icestudio.io/)

## Referencias

[Foro donde se exploró todo esto](https://groups.google.com/g/fpga-wars-explorando-el-lado-libre/c/EykvQqULFlw)  
[[2] Video de YouTube sobre cómo habilitar Loops Combinacionales (Método 1)](https://www.youtube.com/watch?v=ViIgxPSN4_A)  
[[3] Video de YouTube sobre cómo habilitar Loops Combinacionales (Método 2)](https://www.youtube.com/watch?v=kVQ33be7ZNU)  


