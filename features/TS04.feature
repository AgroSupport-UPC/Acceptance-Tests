Feature: TS04 Uso de nuestra API para gestionar citas de asesoría
  Como desarrollador 
  quiero integrar un API 
  para gestionar la información de las citas de asesoría en la base de datos, de manera que pueda realizar operaciones CRUD (Crear, Leer, Actualizar, Borrar) a través de solicitudes HTTP.

Scenario:  Integrar un API para manejar las solicitudes HTTP de las citas de asesoría
    Given la aplicación tiene acceso a la documentación de la API y las credenciales necesarias para realizar la integración.
    When se envía una solicitud de tipo GET, POST o PUT con los datos solicitados del usuario a la API.
    Then la API responde con un código de estado correspondiente (200 OK o 201 Created).
    And se realiza la operación solicitada.

Examples:
    | solicitud | codigo de estado | operacion solicitada      |
    | GET       | 200 OK           | Obtener lista de citas    |
    | POST      | 201 Created      | Crear una nueva cita      |
    | PUT       | 200 OK           | Actualizar una cita       |

Scenario: Manejar errores en la Integración de API para Solicitudes HTTP de citas de asesoría
    Given la aplicación tiene acceso a la documentación de la API y las credenciales necesarias para realizar la integración
    When se envía una solicitud de tipo GET, POST, PUT o DELETE con los datos solicitados de la cita de asesoría a la API
    And ocurre un error.
    Then la API responde con un código de estado correspondiente al error (400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found, 500 Internal Server Error).
    And el sistema proporciona un mensaje de error descriptivo que ayuda al desarrollador a identificar y corregir el problema. 

Examples:
    | solicitud | codigo de estado          | mensaje de error                  |
    | POST      | 400 Bad Request           | Parámetros de solicitud inválidos |
    | POST      | 401 Unauthorized          | Credenciales inválidas            |
    | PUT       | 404 Not Found             | Recurso no encontrado             |
    | DELETE    | 404 Not Found             | Recurso no encontrado             |
    | GET       | 500 Internal Server Error | Error interno del servidor        |
