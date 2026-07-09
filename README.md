## Introducción a los Bucles Combinacionales y Elementos de Memoria

En el diseño de circuitos digitales, los **bucles combinacionales** son secuencias de puertas lógicas donde la salida de una puerta se retroalimenta a su entrada, directa o indirectamente. Aunque a menudo se consideran problemáticos debido a la posibilidad de oscilaciones o estados inestables, pueden ser utilizados intencionadamente para crear elementos de memoria, como los **latches** y **flip-flops**.

Este documento explora la implementación de elementos de memoria utilizando bucles combinacionales, específicamente a través de configuraciones de puertas Mux-OR, basándose en un debate técnico del grupo "FPGAwars: explorando el lado libre" [1].

## Implementaciones Iniciales de Latches

Inicialmente, se propusieron dos diseños de flip-flops tipo D (DFF) utilizando bucles combinacionales en Icestudio. El primer diseño se basó en una configuración de multiplexores (Mux) y puertas lógicas, como se muestra a continuación:

![Mux_as_DFF](assets/Mux_as_DFF.png)
*Figura 1: Implementación inicial de un Latch con Mux.*

Posteriormente, se identificó una simplificación en el diseño, reemplazando una parte del circuito con una puerta OR, resultando en una estructura más optimizada:

![logic_dff](assets/logic_dff.png)
*Figura 2: Latch simplificado con una puerta OR.*

Estos circuitos demuestran cómo la retroalimentación combinacional puede ser utilizada para retener un estado, actuando como una forma básica de memoria.

## Distinción entre Flip-Flop y Latch

Durante el debate, se aclaró una distinción fundamental en la terminología. Aunque inicialmente se les denominó "flip-flops tipo D", se corrigió que estos circuitos son más precisamente **latches**.

Un **latch** es un elemento de memoria sensible al nivel de la señal de control (o "clock"), lo que significa que su salida puede cambiar mientras la señal de control está activa. En contraste, un **flip-flop** es un elemento de memoria sensible al flanco (transición de subida o bajada) de la señal de control, capturando el dato de entrada solo en ese instante preciso. La principal diferencia radica en la entrada de disparo: los flip-flops tienen una entrada de disparo que captura el dato, mientras que los latches no la tienen en el mismo sentido.

## Implementación de un Latch "Verdadero"

Considerando la aclaración, se presentó un esquema para un "latch verdadero" que ilustra mejor el comportamiento de retención de datos. Este circuito memoriza el dato de entrada ('DATA') cuando la señal de reloj ('CLOCK') está activa (en alto), y mantiene el último estado cuando 'CLOCK' está inactiva. Si 'DATA' es 1 y 'CLOCK' se activa, la salida se pone a 1. Si 'DATA' es 0 y 'CLOCK' se activa, la salida se pone a 0.

![true_latch](assets/true_latch.png)
*Figura 3: Esquema de un Latch "verdadero".*

## Latch Maestro-Esclavo para Comportamiento por Flanco

Para lograr un comportamiento sensible al flanco, similar al de un flip-flop, se puede construir un **latch maestro-esclavo**. Esta configuración utiliza dos latches básicos conectados en serie, donde el primer latch (maestro) captura el dato en un nivel del reloj y el segundo latch (esclavo) transfiere ese dato a la salida en el nivel opuesto o flanco del reloj. Esto permite que el cambio de estado ocurra en un flanco específico del reloj, evitando la transparencia del latch simple.

![master_slave_latch](assets/master_slave_latch.png)
*Figura 4: Latch Maestro-Esclavo, logrando un comportamiento sensible al flanco.*

## Contador de 4 Bits con Latches Maestro-Esclavo

La aplicación de los latches maestro-esclavo se demostró mediante la construcción de un **contador ascendente de 4 bits**. Al conectar cuatro de estos latches en cascada, se puede crear un contador que incrementa su valor con cada flanco de reloj. Este tipo de contador, donde los cambios se propagan secuencialmente de un latch a otro, se clasifica como **asíncrono**.

![contador_4bits](assets/contador_4bits.png)
*Figura 5: Contador ascendente de 4 bits implementado con latches maestro-esclavo.*

Aunque funcional, los contadores asíncronos pueden sufrir de retardos de propagación acumulativos, lo que limita su velocidad y puede causar problemas en sistemas complejos. La alternativa ideal es una arquitectura **síncrona**, donde todos los elementos de memoria cambian de estado simultáneamente con el mismo flanco de reloj, garantizando un comportamiento más predecible y rápido.

## Habilitación de Bucles Combinacionales en Icestudio

Para experimentar con estos diseños en Icestudio, es necesario habilitar explícitamente la opción de "Loops Combinacionales". Se recomienda mantener esta opción deshabilitada por defecto, activándola solo cuando se trabaje intencionadamente con este tipo de circuitos. Existen diferentes métodos para habilitar esta funcionalidad, como se detalla en los siguientes recursos de video [2] [3]:

## Conclusión

La exploración de los bucles combinacionales y su aplicación en la creación de latches y flip-flops es fundamental para comprender los fundamentos de la lógica secuencial. Aunque los bucles combinacionales pueden ser una fuente de desafíos en el diseño digital, su uso controlado permite la construcción de elementos de memoria esenciales. La distinción entre latches (sensibles al nivel) y flip-flops (sensibles al flanco) es crucial, y la implementación de latches maestro-esclavo ofrece una vía para lograr un comportamiento síncrono en el diseño de contadores y otros circuitos secuenciales.

## Referencias

[1] DemocritoBinary, et al. "Mux-OR as DFF (Combinational Loops)". *FPGAwars: explorando el lado libre*, Google Groups. [https://groups.google.com/g/fpga-wars-explorando-el-lado-libre/c/EykvQqULFlw](https://groups.google.com/g/fpga-wars-explorando-el-lado-libre/c/EykvQqULFlw)
[2] Video de YouTube sobre cómo habilitar Loops Combinacionales (Método 1). [https://www.youtube.com/watch?v=ViIgxPSN4_A](https://www.youtube.com/watch?v=ViIgxPSN4_A)
[3] Video de YouTube sobre cómo habilitar Loops Combinacionales (Método 2). [https://www.youtube.com/watch?v=kVQ33be7ZNU](https://www.youtube.com/watch?v=kVQ33be7ZNU)
