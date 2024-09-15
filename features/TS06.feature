Feature: TS06 Uso de nuestra API para gestionar autenticación
    Como desarrollador 
    quiero integrar un API 
    para gestionar la información de los usuarios en la base de datos, de manera que pueda realizar operaciones CRUD (Crear, Leer, Actualizar, Borrar) a través de solicitudes HTTP.

Scenario: Registro de un nuevo usuario con verificación de seguridad (sign-up)
    Given el usuario desea registrarse
    When el sistema recibe una <solicitud> POST con los datos del nuevo usuario a la API
    Then se registrará el nuevo usuario
    And brindará respuesta a la petición realizada con un <codigo de estado> 201 Created.

Scenario: Inicio de sesión del usuario con verificación de seguridad exitoso (sign-in)
    Given el usuario desea iniciar sesión de forma segura
    When el sistema recibe una <solicitud> POST con las credenciales de inicio de sesión del usuario (correo electrónico y contraseña) a la API
    Then se verificarán las credenciales
    And la API responde con un <codigo de estado> 200 OK y el token de autenticación válido.

Scenario: Inicio de sesión del usuario con verificación de seguridad fallido (sign-in)
    Given el usuario desea iniciar sesión de forma segura
    When el sistema recibe una <solicitud> POST con las credenciales de inicio de sesión del usuario (correo electrónico y contraseña) a la API
    Then se verificarán las credenciales
    And la API responde con un <codigo de estado> 400 Bad Request indicando que no se encontró un usuario con las credenciales ingresadas.

Scenario: Manejar errores en la autenticación
    Given el usuario intenta realizar una operación de autenticación
    When el sistema recibe una <solicitud> POST con credenciales inválidas o información incompleta
    Then la API responde con un <codigo de estado> correspondiente al error (401 Unauthorized, 403 Forbidden, 422 Unprocessable Entity)
    And el sistema proporciona un <mensaje de error> descriptivo para guiar al usuario o desarrollador.

Examples:
    | solicitud | codigo de estado           | mensaje de error                                 |
    | POST      | 401 Unauthorized           | <Credenciales incorrectas>                       |
    | POST      | 403 Forbidden              | <El usuario no tiene permisos para acceder>      |
    | POST      | 422 Unprocessable Entity   | <La contraseña debe tener al menos 8 caracteres> |
