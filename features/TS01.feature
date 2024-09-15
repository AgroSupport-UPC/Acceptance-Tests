Feature: TS01 Uso de una API para videollamadas
    Como desarrollador
    quiero integrar la creación de videollamadas utilizando la API de Jitsi Meet
    para facilitar las asesorías en la aplicación

Scenario: Creación de videollamada
    Given el usuario tiene una asesoría pendiente.
    When seleccione la opción de ingresar a la asesoría.
    Then el sistema lo redireccionará a un enlace con la videollamada de Jitsi Meet para que el usuario acceda a la asesoría. 

Examples:
| usuario  | enlace                        |
| Pablo    | https://meet.jit.si/asesoria1 |
| Susan    | https://meet.jit.si/asesoria2 |
