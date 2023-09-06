Clonar y Configurar el Proyecto JetMaintain

Para configurar y ejecutar este proyecto en tu entorno local, sigue estos pasos:

Asegúrate de tener Ruby y Ruby on Rails instalados en tu sistema. Si aún no los tienes, puedes seguir las instrucciones en la documentación oficial de Ruby on Rails para instalarlos.

Clona este repositorio en tu máquina local utilizando el siguiente comando:

bash
Copy code
git clone git@github.com:djbetho/JetMaintain.git
cd JetMaintain
Instala las gemas necesarias ejecutando el siguiente comando en la raíz del proyecto:

undefined
Copy code
bundle install
Crea la base de datos y ejecuta las migraciones:

lua
Copy code
rails db:create
rails db:migrate
Llena la base de datos con datos de ejemplo utilizando el siguiente comando:

undefined
Copy code
rails db:seed
Inicia el servidor de desarrollo:

undefined
Copy code
rails server
Una vez que el servidor esté en funcionamiento, puedes acceder a la aplicación en tu navegador web visitando http://localhost:3000.

Descripción del Proyecto JetMaintain
JetMaintain es una aplicación web diseñada para la gestión de motores de aeronaves y el seguimiento de su mantenimiento. Con JetMaintain, puedes administrar y mantener un registro detallado de los motores, las ciudades donde se encuentran, las tareas de mantenimiento programadas y los materiales necesarios para cada tarea.

La aplicación está diseñada para ayudar a los equipos de mantenimiento de aeronaves a mantener un control eficiente de sus motores y garantizar que se realicen los servicios de mantenimiento necesarios de manera oportuna.

Siéntete libre de explorar la aplicación y utilizarla para gestionar tus motores y tareas de mantenimiento. Si tienes alguna pregunta o necesitas asistencia, no dudes en ponerte en contacto con nosotros.

¡Esperamos que JetMaintain sea una herramienta útil para tu equipo de mantenimiento de aeronaves!