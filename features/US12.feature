Feature: US12 Visualización de notificaciones del usuario
    Como usuario de la aplicación, 
    quiero poder visualizar notificaciones referentes al estado de las asesorias u otra información relevante 
    para mantenerme informado.

Scenario:  Escenario 1: Visualizar notificaciones
Given el <usuario> está registrado en la aplicación.
When ingrese a la sección de Notificaciones.
Then el sistema mostrará el <listado de las notificaciones>.

Examples:
| usuario | listado de las notificaciones               | 
| Pablo   | Tienes una cita con...                      |       
| Ana     | Ha Juan le ha gustado tu publicacion de...  | 

Scenario: El usuario elimina una notificación
Given el <usuario> se encuentra en la sección de Notificaciones.
When presione el botón para eliminar la notificación.
Then el sistema eliminará la notificación y desaparecerá del listado de notificaciones. 

Examples:
| usuario | 
| Pablo   | 
| Ana     | 
