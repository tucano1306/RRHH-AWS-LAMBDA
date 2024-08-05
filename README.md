# RRHH-AWS-LAMBDA
La arquitectura propuesta para automatizar procesos de RRHH utilizando AWS Lambda y otros servicios de AWS está diseñada para ser escalable, eficiente y segura. A continuación, se describen los componentes clave y cómo interactúan entre sí:
Componentes Principales
1. AWS Lambda
AWS Lambda es un servicio de computación sin servidor que permite ejecutar código en respuesta a eventos sin necesidad de gestionar servidores. En esta arquitectura, Lambda se utiliza para automatizar procesos de RRHH como la generación de informes y el procesamiento de solicitudes.
Función Lambda: La función Lambda se ejecuta en respuesta a eventos programados (por ejemplo, diariamente) o en respuesta a otros eventos definidos.
Código Lambda: El código de la función Lambda se almacena en un archivo ZIP (lambda_function.zip) y se ejecuta con el runtime especificado (por ejemplo, python3.8).
2. Amazon S3
Amazon S3 es un servicio de almacenamiento de objetos que permite almacenar y recuperar cualquier cantidad de datos en cualquier momento.
Bucket S3: Un bucket S3 se utiliza para almacenar los informes generados por la función Lambda y otros datos relacionados. El bucket se crea con un nombre especificado en las variables de Terraform.
3. Amazon DynamoDB
Amazon DynamoDB es un servicio de base de datos NoSQL que proporciona un rendimiento rápido y predecible con una escalabilidad automática.
Tabla DynamoDB: Una tabla DynamoDB se utiliza para almacenar y gestionar las solicitudes de RRHH. La tabla se configura con un esquema simple que incluye un atributo de clave de partición (RequestID).
4. Amazon CloudWatch
Amazon CloudWatch es un servicio de monitoreo que proporciona datos y observabilidad para los recursos y aplicaciones de AWS.
Regla de Evento de CloudWatch: Una regla de CloudWatch se utiliza para desencadenar la ejecución de la función Lambda en un horario programado (por ejemplo, diariamente). La regla se configura con una expresión de programación (por ejemplo, rate(1 day)).
Permiso de Lambda para CloudWatch: Se configura un permiso para permitir que CloudWatch invoque la función Lambda.
Flujo de Trabajo
Desencadenador de CloudWatch: La regla de evento de CloudWatch se activa según el horario programado y desencadena la función Lambda.
Ejecución de Lambda: La función Lambda se ejecuta y realiza las tareas automatizadas de RRHH, como la generación de informes o el procesamiento de solicitudes.
Almacenamiento en S3: Los informes generados por la función Lambda se almacenan en el bucket S3.
Gestión de Datos en DynamoDB: La función Lambda interactúa con la tabla DynamoDB para almacenar y gestionar las solicitudes de RRHH.
Monitoreo con CloudWatch: CloudWatch monitorea la ejecución de la función Lambda y registra los eventos y métricas relevantes.
Archivos Terraform
main.tf
Define los recursos principales, incluyendo la función Lambda, el bucket S3, la tabla DynamoDB, la regla de evento de CloudWatch y los permisos necesarios.
variables.tf
Contiene las definiciones de las variables que se usan en main.tf para parametrizar la configuración, como nombres de recursos y configuraciones específicas.
outputs.tf
Define las salidas que se mostrarán después de aplicar la configuración, proporcionando información útil sobre los recursos desplegados, como los nombres del bucket S3, la tabla DynamoDB y la función Lambda.
Beneficios de la Arquitectura
Automatización: La función Lambda automatiza tareas repetitivas de RRHH, mejorando la eficiencia operativa.
Escalabilidad: Los servicios utilizados (Lambda, S3, DynamoDB) escalan automáticamente según la demanda.
Costo-eficiencia: AWS Lambda y DynamoDB ofrecen modelos de pago por uso, lo que ayuda a optimizar los costos.
Seguridad: La arquitectura utiliza roles y políticas de IAM para controlar el acceso y las acciones permitidas, asegurando que solo los servicios autorizados puedan interactuar entre sí.
Monitoreo y Logging: CloudWatch proporciona monitoreo y logging, lo que facilita la observación y el diagnóstico de problemas.
Esta arquitectura es flexible y puede adaptarse a diferentes necesidades y escalas, permitiendo a los equipos de RRHH centrarse en tareas más estratégicas mientras las tareas repetitivas son manejadas automáticamente.


NOTA : SE DEBE COMPRIMIR EL LAMBDA_FUNCTION.PY
