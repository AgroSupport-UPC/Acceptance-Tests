Feature: US02 Visualización de información de un asesor
    Como granjero con poca experiencia,
    quiero ver la información de un asesor
    para tomar una decisión informada antes de separar una cita.

Scenario: Ver información de un asesor
Given el <granjero> con poca experiencia quiere ver <informacion> de un asesor.
And se encuentra en el apartado del “Catálogo de Asesores” en su dispositivo móvil.
When seleccione al <cuadro> de un asesor en la interfaz móvil.
Then el sistema le mostrará la <informacion> del asesor como nombre, experiencia, calificación y reseñas de manera optimizada para móvil.

Examples:
| granjero | asesor seleccionado | informacion                              |
| Martin   | Luis A.             | 5 años de exp, 4 estrellas, 10 reseñas   |
| Nadia    | Nicolás M.          | 6 años de exp, 4.5 estrellas, 26 reseñas |

Scenario: Fallar al visualizar la información del asesor
Given el <granjero> con poca experiencia quiere ver <informacion> relevante del asesor.
And se encuentra en el apartado de “Asesores” en su dispositivo móvil.
When seleccione al cuadro de un asesor en la interfaz móvil.
And se encuentre con un <error> al cargar la información.
Then el sistema le mostrará un <mensaje> de error de carga en la interfaz móvil.

Examples:
| granjero | asesor seleccionado | error | mensaje de error |
| Martin   | Naldo S.            | 404   | No encontrado    |
| Nadia    | Luisa C.            | 500   | Error interno    |