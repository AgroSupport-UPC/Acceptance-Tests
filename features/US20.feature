Feature: US20 Pantalla de inicio
    Como usuario,
    quiero ver una pantalla de inicio sencilla
    para navegar y explorar las funcionalidades de la aplicación fácilmente.

Scenario: Pantalla de inicio de la aplicación
Given el <usuario> ha ingresado a la aplicación.
When inicie sesión correctamente.
Then el sistema lo derivará a la <pantalla de inicio> y visualizará las <opciones> para navegar por la aplicación.

Examples:
| usuario | tipo de usuario | pantalla de inicio                   | opciones                   |
| Pedro   | Granjero        | Pantalla de bienvenida para granjero | Asesores, Citas, Explorar  |
| Mario   | Asesor          | Pantalla de bienvenida para asesor   | Mis publicaciones, Citas   |
