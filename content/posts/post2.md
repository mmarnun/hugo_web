---
title: "Underworld Evolution"
date: 2023-10-07T16:00:06+01:00
tags: []
featured_image: ""
description: ""
---

Manuel Alejandro Martín Núñez

-----

# <a name="_r2ihd37kmr4o"></a>**UNDERWORLD**
# <a name="_819b6gqcxzcf"></a>**EVOLUTION**
#
#

<a name="_gaqu66bsfx9s"></a><a name="_xntvmllal5c4"></a>**Manuel Alejandro Martín Núñez**


**Planificación y administración de redes**
# <a name="_9eafw3tpcqq4"></a>**ASIR-1**

# <a name="_7r0h9qjunc95"></a>**Escenario**
**Sustituir en la infraestructura de red los routers CISCO por máquinas Linux siguiendo el esquema de la figura.**

Como vemos en la siguiente imagen en la infraestructura de red los routers han sido sustituidos por routers Linux.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.001.png)

# <a name="_hz4zgrszhm4w"></a>**Routers**
**Configurar adecuadamente las máquinas Linux para que funcionen como routers.**

Para que las máquinas Linux actúan como routers, deberemos acceder al archivo de configuración /etc/sysctl.conf y activar el bit de forwarding, para ello descomentamos la linea que contenga “net.ipv4.ipv4\_forward=1”.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.002.png)


Y con el comando sysctl -p aplicaremos los cambios realizados en el archivo de configuración.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.003.png)

# <a name="_402msjfvo3yw"></a>**DHCP**
**Configurar el servicio DHCP que tenían los hombres lobo y los licántropos en las mismas condiciones que tenían cuando se usaban routers CISCO**

**Router 3 Licanland**

Para establecer una configuración de dhcp, deberemos tener instalado en el router el paquete “isc-dhcp-server”

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.004.png)

Primero indicaremos la interfaz por la que se ofrecerá el servicio de dhcp, en este caso indicaremos que es la interfaz ens4.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.005.png)


A continuación en el archivo de configuración “/etc/dhcp/dhcpd.conf”

Introduciremos varias líneas donde indicaremos la red a la que vamos a dar el servicio de dhcp, especificaremos el rango de direcciones IP que se pueden asignar, la puerta de enlace, la dirección de broadcast, y el tiempo en el cual el cliente dhcp puede usar la dirección IP asignada, entel caso 10 minutos y el tiempo máximo, 2 horas.

Como vemos al indicar el rango hemos excluido las 10 primeras.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.006.png)

Después reiniciamos el servicio de dhcp y comprobaremos el estado.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.007.png)

Ahora iremos a los PCs de la red, y le configuraremos que la interfaz obtenga la dirección IP con el servicio DHCP y veremos que obtiene la dirección IP y tiene comunicación con el resto de dispositivos de la misma red.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.008.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.009.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.010.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.011.png)





**Router 4 Wolfland**

En el router de los hombres lobo haremos igual, instalaremos los paquetes necesarios e indicaremos la interfaz.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.012.png)

Al igual que con el router anterior modificaremos el archivo de configuración.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.013.png)


` `Y de nuevo reiniciamos y comprobamos el estado del servicio.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.014.png)

Y de nuevo en los PCs los configuramos con DHCP obtendrán las direcciones IP automáticamente y tendrán comunicación con el resto.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.015.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.016.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.017.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.018.png)


# <a name="_dxmxuynrjcvn"></a>**Enrutamiento**
**Crear las tablas de enrutamiento necesarias para que todas las máquinas se comuniquen con todas en principio, teniendo en cuenta que las redes internas tendrán direcciones privadas y en Internet tendremos direcciones públicas.**

A continuación te muestro las direcciones IP de cada uno de los PCs.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.019.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.020.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.021.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.022.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.023.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.024.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.025.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.026.png)



Ahora mostraré las direcciones IP de las interfaces de los routers, las rutas que tienen establecidas y las reglas DNAT y SNAT establecidas, todo esto lo implementaremos con los comandos que hemos aprendido de prácticas anteriores.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.027.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.028.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.029.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.030.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.031.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.032.png)

Desde PC1 comprobaremos que podemos acceder a el resto de redes mediante sus direcciones IP públicas y que accedemos al PC del DNAT indicado, para ello desde PC1 haremos ssh a las direcciones públicas y una vez establecida la conexión ssh mostraremos la dirección IP del pc al que hemos hecho ssh para verificar que efectivamente estamos conectados a la red.

También adjunto una imagen con la captura de paquetes para ver los paquetes con qué origen y destino viajan, y así verificar y corroborar la conexión.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.033.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.034.png)


![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.035.png)![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.036.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.037.png)



Y para comprobar que al PC1 si podemos acceder desde otra red haremos ssh a la pública de su red.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.038.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.039.png)
# <a name="_pqfnv5og69qk"></a>**Cortafuegos**
## <a name="_l4l4xbeu278w"></a>**Los VAMPIROS no puedan comunicarse con el resto de especies**
Con el comando de la siguiente imagen, estableceremos la politica de FORWARD en DROP para que todos los paquetes que pasen por el router 1 de los vampiros sean rechazados, es por ello que al intentar salir hacia afuera o entrar dentro de la red, este cortafuegos, los descartará.

# ![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.040.png)

<a name="_pob0ftlhcpo8"></a>Podemos ver que al intentar salir hacia afuera, no sale del router, se queda en la petición.

# ![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.041.png)
#
<a name="_jd6cmjanyz6p"></a><a name="_voofkwehhtsa"></a>Pero si se pueden comunicar entre dispositivos de la misma red.
#
# ![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.042.png)<a name="_mx5q6htn65ol"></a><a name="_kbvikigp14o8"></a>
## <a name="_n9n9td6jfshx"></a>**HUMANOS tampoco podrán comunicarse con el resto de especies**
Al igual que con los vampiros, cortaremos todo el tráfico de entrada y de salida que pase por el router,

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.043.png)

Como vemos, no podemos comunicarnos hacia fuera.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.044.png)

Y entre ellos si pueden comunicarse dentro de la misma red.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.045.png)


## <a name="_mxyttmm9vhi"></a>**Los HOMBRES LOBO y los LICÁNTROPOS, dado que no son tan repulsivos cuando se cruzan, podrán comunicarse entre sí. Con el resto de especies no tendrán comunicación.**
Para limitar las comunicaciones entre los hombres lobo y los licántropos, y que no puedan nada más que comunicarse entre ellos, estableceremos las reglas de cortafuegos en el router que los une, ALEXANDER, es debido establecer las reglas en cada uno de los routers de la red, pero en este caso también es correcto cortar donde antes se pueda.

Para ello, estableceremos la política de FORWARD en DROP para rechazar todos los paquetes que vayan a pasar por ahí excepto los que nosotros indiquemos.

Agregaremos una pareja de reglas, para que los paquetes con origen desde la red con  ip publica 180.0.0.0/8 y con destino 190.0.0.0/8 sean aceptados, y al reves también.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.046.png)

Como vemos podemos comunicarnos entre de la redes de los licántropos y los hombres lobo.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.047.png)

Y para la comunicación hacia otras redes, no nos deja.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.048.png)

O las otras redes hacia las redes de los licántropos u hombres lobo, tampoco, llegan al router de Alexander y se descartan ya que no hay normas de cortafuegos que permitan esta conexión.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.049.png)

Con el comando iptables y los parámetros -L y -v podemos ver los paquetes si han sido aceptados o denegados con las reglas que tenemos establecidas.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.050.png)



# <a name="_8igw6vv42tlk"></a>**IT KNIGHT, SONJA y SELENE**
**Configurar en los cortafuegos las reglas necesarias para que, desde HUMANLAND, IT KNIGHT siga comunicándose con sus dos vampiras favoritas (SONJA Y SELENE).**

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.051.png)

En primer lugar a cada uno de los routers les configuraremos unos nuevos parámetros DNAT para más tarde comprobar la conectividad entre estas 3 máquinas.

En el router 1 crearemos una regla DNAT por puerto 22 para conectarnos a SELENE mediante SSH, y para conectarnos  SONJA por el puerto 80 para conectarnos por HTTP ya que le hemos instalado un servidor web para más adelante verificar que podemos acceder a ella.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.052.png)

Para el router 2, crearemos una regla DNAT para acceder a IT KNIGHT mediante el puerto 22 por SSH.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.053.png)

Como anteriormente establecimos la política FORWARD en DROP, deberemos crear reglas de cortafuegos ACCEPT.
## <a name="_gqcsth5lt6g3"></a>**SELENE ---> IT KNIGHT**
Para que desde el dispositivo de SELENE se comunique hacia el servidor SSH de IT KNIGHT, deberemos crear en ambos routers normas de ACCEPT para permitir la salida y entrada, de paquetes tanto como de petición como de respuesta.

Para ello en primer lugar en el router 1 crearemos una regla para permitir la salida de los paquetes de solicitud desde SELENE hacia la dirección pública de los HUMANOS hacia el puerto 22. Entonces deberemos indicar las interfaces de entrada y salida, las direcciones y un puerto de destino.

**iptables -A FORWARD -i ens4 -o ens5 -s 192.168.2.4 -d 90.0.0.2 -p tcp --dport 22 -j ACCEPT**

En este comando especificamos que los paquetes que entren por la interfaz ens4 con dirección IP 192.168.2.4 de origen y tengan un destino 90.0.0.2 que va a salir por la interfaz ens5 con un puerto de destino 22 sean aceptados. Así permitiremos la salida.

**iptables -A FORWARD -i ens5 -o ens4 -s 90.0.0.2 -d 192.168.2.4 -p tcp --sport 22 -j ACCEPT**

Con este comando permitiremos la entrada de los paquetes de respuesta, entonces los paquetes que entren por la interfaz ens5 con un origen 90.0.0.2 y salga por ens4 con un destino 192.168.2.4 (despues de que el router haga DNAT), con un puerto de origen 22, se permitirá la entrada.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.054.png)




En el router 2 crearemos otro par de reglas para permitir la entrada de los paquetes de solicitud y la salida de los paquetes de respuesta

**iptables -A FORWARD -i ens5 -o ens4 -s 80.0.0.2 -d 192.168.1.4 -p tcp --dport 22 -j ACCEPT**

Los paquetes que entren por la interfaz ens5 con origen 80.0.0.2 y salgan por ens4 hacia la 192.168.1.4 con puerto de destino 22 serán aceptados.

**iptables -A FORWARD -i ens4 -o ens5 -s 192.168.1.4 -d 80.0.0.2 -p tcp --sport 22 -j ACCEPT**

Los paquetes generados de respuesta que entren por ens4 desde IT KNIGHT y salgan por ens5 con destino 80.0.0.2 desde el puerto 22, también serán aceptados.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.055.png)



Para comprobar que estas reglas funcionan, desde SELENE haremos SSH hacia la ip pública de los HUMANOS que gracias a las reglas nos permitirá la comunicación y el DNAT nos conectará IT KNIGHT al puerto 22.

En la imagen vemos a SELENE haciendo SSH a la pública de los humanos, y una vez dentro mostramos la IP y vemos que es realmente el ordenador de IT KNIGHT

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.056.png)

Vemos en la captura que la comunicación se ha establecido correctamente.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.057.png)

Gracias al comando iptables con los parámetros -L -n y -v, veremos las reglas y si han cumplido su cometido, vemos en la siguiente imagen que los paquetes de solicitud y respuesta en ambos routers han podido salir y entrar de las redes.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.058.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.059.png)



También comprobaremos que por ejemplo desde cualquier otro dispositivo de la red de VAMPIROS no tendremos acceso al ssh, ya que no hay ninguna norma que permita la salida de estas peticiones.

Y vemos  que en la cadena de FORWARD, los paquetes han sido descartados.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.060.png)
## <a name="_d1ecyb8td914"></a>**SONJA ---> IT KNIGHT**
Con SONJA haremos igual que son SELENE, en el router 1 deberemos añadir un nuevo par de reglas para permitir la salida y entrada de paquetes de petición y respuesta, desde la dirección IP de SONJA o hacia ella.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.061.png)

Desde su ordenador crearemos una conexión SSH a la IP pública de los humanos para comprobar la conectividad hacia IT KNIGHT y como vemos en la siguiente imagen, estamos conectados por SSH al ordenador correctamente.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.062.png)

En esta captura entre el router 2 y el router Marcus, vemos que hay una conexión SSH establecida correctamente entre estos dos ordenadores.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.063.png)

De nuevo para verificar aún más que los paquetes han sido aceptados en ambos routers usaremos el parámetro -v para ver que los paquetes han sido aceptados.

Vemos en la imagen que los paquetes desde o hacia la IP de SONJA han sido aceptados. 

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.064.png)



Aquí vemos que en el router 2, ha aceptado la entrada de la petición y la salida de la respuesta, no era necesario agregar en este router otro par de reglas puesto que las que ya están implementadas son suficientes. 

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.065.png)


## <a name="_jxbo7mspqway"></a>**IT KNIGHT ---> SELENE**
Para comunicarnos con SELENE desde IT KNIGHT, deberemos permitir la salida de paquetes de solicitud desde IT KNIGHT hacia la pública de los vampiros con puerto de destino 22 puesto que SELENE tiene un servicio de SSH.

Para ello como he explicado anteriormente debemos crear un par de reglas en cada router para así permitir que los paquetes viajen.

Agregamos dos reglas en el router 2 para que los paquetes de solicitud que salgan de IT KNIGHT puedan salir con destino la ip pública de la red de los vampiros, y otra para que la respuesta que venga desde los vampiros pueda entrar.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.066.png)





En el router 1 deberá, asimismo crear otro par de reglas para permitir la entrada de las solicitudes y la salida de las respuestas.

Permitir la entrada de los paquetes que vengan de la red de HUMANOS con destino SELENE al puerto 22, y la respuesta salga 

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.067.png)

Para comprobar que podemos comunicarnos con SELENE, realizaremos ssh a su ip pública y a continuación veremos que estamos accediendo a la máquina de SELENE, como podemos ver por la dirección IP.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.068.png)

Como vemos en la captura de wireshark se establece una comunicación entre ambas redes correctamente.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.069.png)

Y podemos verificar que las reglas funcionan correctamente ya que los paquetes viajan gracias a las reglas que aceptan estos paquetes en ambos routers.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.070.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.071.png)

Asimismo comprobamos que desde otro PC de la red de humanos no podemos acceder puesto que no existen reglas que permitan la salida de paquetes.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.072.png)

## <a name="_xb4zb9cop6uh"></a>**IT KNIGHT ---> SONJA**
Para permitir que IT KNIGHT se comunique con SONJA lo haremos mediante el puerto 80 (HTTP), ya que en el ordenador de SONJA hay instalado un servidor web.

Para ello permitiremos la salida de paquetes de petición por el puerto 80, y la entrada de la respuesta de los mismos. El mecanismo es el mismo que los anteriores, debemos indicar las interfaces por las que entra un paquete indicando también la dirección IP y la interfaz de salida indicando el la dirección IP de destino, al igual que indicar al puerto con el que se va a comunicar.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.073.png)

En el router 1 permitiremos el paso de las peticiones que provienen de la dirección IP pública de las red de los HUMANOS y asimismo la salida de los paquetes de respuesta de SONJA.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.074.png)

Para comprobar que desde IT KNIGHT hay conexión hacia SONJA, usaremos el comando “lynx”, que es un visor en línea de comandos de páginas web, indicaremos la dirección IP pública de la red de los VAMPIROS.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.075.png)

Y como podemos ver estamos accediendo al servidor web que tiene SONJA, gracias al DNAT que hemos establecido en su router y a la reglas de cortafuego que aceptan los paquetes con las especificaciones que hemos indicado, se redirigen hacia SONJA.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.076.png)

De nuevo verificamos la conexión con una captura de wireshark donde vemos que se establece una conexión por HTTP entre estas redes.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.077.png)

Como vemos en las siguientes imágenes, los paquetes han viajado correctamente ya que las reglas de cortafuegos en ambos routers han funcionado con éxito.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.078.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.079.png)

# <a name="_tlpxa4v73uxy"></a>**Servidor web HUMANLAND**
**Realiza las configuraciones necesarias para montar en HUMANLAND un servidor web accesible desde cualquier parte de UNDERWORLD.**

En primer lugar instalaremos y activaremos el servicio web en un PC en la red de los HUMANOS, en este caso en PC4 deberemos tener los paquetes necesarios instalados.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.080.png)

Y modificaremos la página principal para así hacer algo más visible que se han conectado correctamente al servidor web de HUMANLAND.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.081.png)

Y finalmente reiniciamos y comprobamos que el servicio está activo.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.082.png)

Primeramente deberemos crear una nueva regla DNAT en el router para redirigir todas las peticiones de puerto 80 al PC4 que es donde tenemos instalado el servidor web.

A continuación crearemos 2 reglas, una para permitir la entrada de los paquetes de solicitud, y otra para permitir la salida de las respuestas.

**iptables -A FORWARD -i ens5 -o ens4 -s 0.0.0.0/0 -d 192.168.1.3 -p tcp --dport 80 -j ACCEPT**

Este comando permitirá la paso de paquetes, que entren por la interfaz ens5 que provengan de cualquier red, y que salgan por la interfaz ens4 después de hacer DNAT que vayan hacia la IP 192.168.1.3 con destino el puerto 80.

**iptables -A FORWARD -i ens4 -o ens5 -s 192.168.1.3 -d 0.0.0.0/0-p tcp --sport 80 -j ACCEPT**

Esta regla permitirá la salida de la respuesta que entre por la interfaz ens4 desde el PC4 y salgan por la interfaz ens5 hacia cualquier red y que tenga un origen de puerto 80.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.083.png)



Ahora deberemos agregar algunas reglas en los routers en los que tengamos limitado el paso de paquetes, por ejemplo R1 y ALEXANDER.

En caso del router 1 deberemos añadir dos reglas:

**iptables -A FORWARD -i ens4 -o ens5 -s 0.0.0.0/0 -d 90.0.0.2 -p tcp --dport 80 -j ACCEPT**

Con esta permitiremos la salida de paquetes que vengan de cualquier dispositivo de la red de VAMPIROS que tengan como destino la IP 90.0.0.2 en el puerto 80.

**iptables -A FORWARD -i ens5 -o ens4 -s 90.0.0.2 -d 0.0.0.0/0 -p tcp --sport 80 -j ACCEPT**

Aquí aceptaremos la respuesta que venga desde la IP 90.0.0.2 con puerto 80 hacia cualquier IP de dentro de la red de VAMPIROS.


![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.084.png)



En el router de ALEXANDER crearemos dos reglas para:

**iptables -A FORWARD -o ens4 -s 0.0.0.0/0 -d 90.0.0.2 -p tcp --dport 80 -j ACCEPT**

Aceptar el paso de paquetes que vengan de cualquiera de las dos IPs públicas de los LICÁNTROPOS u HOMBRES LOBO en cualquiera de las interfaces y que vayan a salir por la interfaz ens4 hacia la IP 90.0.0.2 con puerto 80.

**iptables -A FORWARD -i ens4 -s 90.0.0.2 -d 0.0.0.0/0 -p tcp --sport 80 -j ACCEPT**

Aceptaremos la respuesta de paquetes que pasen entrando por la interfaz ens4 desde la IP 90.0.0.2 coon puerto origen 80 y que salgan por cualquiera de las interfaces que vayan hacia alguna de las dos IPs públicas de LICÁNTROPOS u HOMBRES LOBO.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.085.png)





Ahora para comprobar que desde cualquier red podemos acceder al servidor web de HUMANLAND he colocado maquina FIREFOX para ver de maner gráfica la web.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.086.png)



## <a name="_gimf4b33ovc1"></a>**RED VAMPIROS**
Como vemos en la siguiente imagen estamos desde un firefox dentro de la red de los VAMPIROS, accediendo a la web de HUMANLAND.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.087.png)

Adjunto captura de wireshark para verificar que se ha establecido una conexión HTTP entre estas redes.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.088.png)

Asimismo con el parámetro -v vemos que los paquetes han pasado por los routers ya que han sido aceptados por los cortafuegos establecidos.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.089.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.090.png)
## <a name="_mz28kg52u3eg"></a>**RED LICÁNTROPOS**
En la siguiente imagen vemos como desde un dispositivo Firefox en la red de LICANTROPOS podemos acceder a la web de HUMANLAND.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.091.png)

En la siguiente captura de wireshark podemos ver como se ha establecido la conexión.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.092.png)


Y de nuevo podemos ver con el parámetro -v que las reglas de cortafuego han aceptado los paquetes para poder viajar correctamente.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.093.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.094.png)
## <a name="_mbu2tlxl50cj"></a>**RED HOMBRES LOBO**
De nuevo en esta imagen vemos que desde un dispositivo Firefox en la Red de HOMBRES LOBO accedemos correctamente a la web de HUMANLAND.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.095.png)

En esta captura de wireshark podemos ver como se ha establecido correctamente la conexión entre las dos redes.

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.096.png)


Y finalmente podemos ver como las reglas de cortafuegos en ambos routers han aceptado los paquetes .

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.097.png)

![](/posts/images/Aspose.Words.c65e5309-2e6d-45df-80bf-1cd3f243421a.098.png)

# <a name="_sj9ftie96nti"></a>**Conclusión**

Después de realizar esta práctica hemos visto la importancia de configurar correctamente los cortafuegos de las máquinas Linux. Así como aprender a crear rutas en los routers utilizando direcciones IP públicas para asegurar la comunicación eficiente entre las redes 

Además hemos aprendido cómo configurar cortafuegos para limitar las conexiones entre las redes permitiendo únicamente el tráfico autorizado y bloqueando el que no queremos. También hemos aprendido a configurar los cortafuegos para permitir la entrada y salida de paquetes de solicitud y de respuesta lo que es importante para el correcto funcionamiento de una comunicación entre dispositivos individuales en una red. 

Finalmente, hemos aprendido a permitir el acceso a un servicio en una red aislada desde todos los dispositivos de todas las redes, lo que nos permite mejorar la eficiencia de nuestras redes y mejorar la experiencia de usuario.

Finalmente hemos aprendido a permitir el acceso a un servicio en una red aislada para que todos los dispositivos de todas las redes puedan acceder a ella.

En resumen con esta práctica hemos aprendido la importancia de la seguridad y la configuración adecuada de los cortafuegos en las máquinas Linux lo que permitirá garantizar una comunicación segura entre redes 
