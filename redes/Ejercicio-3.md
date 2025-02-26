## Modelo OSI y TCP/IP  

## 1º Indicar de cada ejemplo a qué capa de los dos modelos pertenece, justificando tu respuesta.

### 2º Codificación de los datos en bits y manejo de la transmisión física de los datos a través de un cable de red.  
- **Modelo OSI**: Capa Física  
  **Justificación**: Esta capa es la encargada de transmitir los datos en forma de señales físicas (bits) a través de un medio de comunicación, como cables o fibra óptica.

- **Modelo TCP/IP**: Capa de Enlace de Datos  
  **Justificación**: Aunque el modelo TCP/IP combina la Capa Física y la Capa de Enlace de Datos, es en esta capa donde se manejan las tramas de datos que viajan a través del medio físico, asegurando que la información llegue correctamente entre dispositivos conectados.

### 3º Aseguramiento de la entrega de mensajes completos entre dos dispositivos, incluyendo la corrección de errores y la retransmisión si es necesario.  
- **Modelo OSI**: Capa de Transporte  
  **Justificación**: La capa de transporte es responsable de asegurar que los datos lleguen sin errores, controlando el flujo de información y gestionando las retransmisiones si algún dato se pierde en el camino.

- **Modelo TCP/IP**: Capa de Transporte  
  **Justificación**: Al igual que en el modelo OSI, en TCP/IP la capa de transporte (usando TCP principalmente) garantiza la entrega fiable de los datos, corrige errores y maneja la retransmisión cuando es necesario.

### 4º Asignación de direcciones IP y encaminamiento de paquetes a través de diferentes redes hasta su destino final.  
- **Modelo OSI**: Capa de Red  
  **Justificación**: Esta capa se encarga de dirigir los paquetes de datos a través de diferentes redes, utilizando direcciones IP y determinando la mejor ruta para que los paquetes lleguen a su destino final.

- **Modelo TCP/IP**: Capa de Internet  
  **Justificación**: En TCP/IP, la capa de internet maneja el enrutamiento de los paquetes mediante direcciones IP, realizando funciones similares a las de la capa de red en el modelo OSI.

### 5º Establecimiento, mantenimiento y finalización de una sesión de comunicación entre dos dispositivos.  
- **Modelo OSI**: Capa de Sesión  
  **Justificación**: La capa de sesión es la encargada de establecer, mantener y finalizar las sesiones de comunicación entre dos dispositivos, permitiendo que la información fluya de manera continua durante el intercambio.

- **Modelo TCP/IP**: Capa de Transporte  
  **Justificación**: En TCP/IP, la capa de transporte también maneja la conexión entre los dispositivos. Aunque no tiene una capa de sesión explícita, el establecimiento y cierre de las conexiones está gestionado por esta capa (por ejemplo, con TCP).

### 6º Conversión de los datos a un formato común para que puedan ser comprendidos por diferentes sistemas (p. ej., codificación de caracteres, cifrado).  
- **Modelo OSI**: Capa de Presentación  
  **Justificación**: La capa de presentación se ocupa de la conversión de los datos entre diferentes formatos, lo que incluye la codificación, el cifrado y la compresión para garantizar que los datos sean comprensibles por ambos dispositivos.

- **Modelo TCP/IP**: Capa de Aplicación  
  **Justificación**: En el modelo TCP/IP, la capa de aplicación gestiona la interacción entre las aplicaciones y los servicios de red, convirtiendo los datos en un formato adecuado, aunque no tiene una capa específica para la conversión de datos como en OSI.

### 7º Manejo de las conexiones de red, incluyendo el control de flujo y la secuenciación de los datos.  
- **Modelo OSI**: Capa de Enlace de Datos  
  **Justificación**: Esta capa es responsable de manejar cómo los datos se transmiten entre dos dispositivos en la misma red, controlando el flujo de datos y asegurando que los paquetes lleguen en el orden correcto.

- **Modelo TCP/IP**: Capa de Enlace de Datos  
  **Justificación**: Al igual que en el modelo OSI, en TCP/IP la capa de enlace de datos maneja la transmisión de las tramas a través de la red, asegurando la integridad de la información en el medio físico.

### 8º Presentación de la interfaz al usuario final y manejo de la interacción entre aplicaciones (p. ej., navegación web, envío de correos electrónicos).  
- **Modelo OSI**: Capa de Aplicación  
  **Justificación**: La capa de aplicación es la que permite a los usuarios finales interactuar con los servicios de red, como el correo electrónico o la navegación web, proporcionando interfaces directas con las aplicaciones.

- **Modelo TCP/IP**: Capa de Aplicación  
  **Justificación**: En TCP/IP, la capa de aplicación tiene la misma función, permitiendo que las aplicaciones interactúen con la red y con el usuario final, manejando servicios como la transferencia de archivos, navegación web, etc.

