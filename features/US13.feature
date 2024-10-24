Feature: US13 Modificar perfil de usuario
    Como usuario,
    quiero poder modificar mi perfil
    para actualizar los datos que desee.	

Scenario: Modificación de datos de perfil exitosa
Given el <usuario> desea modificar los datos de su perfil.
When ingrese a la sección de <Perfil> del menú.
And llene los <campos> sobre los que desea modificar.
Then se verificará los datos ingresados.
And el sistema actualizará los datos del perfil.

Examples:
| usuario | campos          | modificaciones    |
| Marcos  | foto de perfil  | nueva_foto.jpg    |
| Luisa   | fecha de nacim. | 1988-10-11        |

Scenario: Modificación de datos de perfil fallida
Given el <usuario> desea modificar los datos de su perfil.
When ingrese a la sección de <Perfil> del menú.
And llene los <campos> sobre los que desea modificar.
Then se verificará los datos ingresados.
And el sistema mostrará un <mensaje de error> indicando el dato erróneo.

Examples:
| usuario | campos          | mensaje de error      |
| Marcos  | foto de perfil  | Error al subir foto   |