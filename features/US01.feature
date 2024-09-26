Feature: US01 Visualización del catálogo de asesores
    Como granjero con poca experiencia,
    quiero explorar el catálogo de asesores
    para conocer quiénes me pueden apoyar con asesorías.

Scenario: Explorar catálogo de asesores
Given el <granjero> con poca experiencia quiere explorar el <catalogo de asesores>.
And se encuentra en la aplicación.
When seleccione el <boton> relacionado con el “Catálogo de asesores”.
Then el sistema le mostrará una <lista> de todos los asesores disponibles en la aplicación.

Examples:
| granjero | lista de asesores              |
| Martin   | Luis A., Marco S., Marta M.    |
| Nadia    | Nicolás M., Luisa C., Óscar L. |

Scenario: Filtrar búsqueda de asesores
Given el <granjero> con poca experiencia quiere personalizar su búsqueda.
And se encuentra en el apartado de “Asesores”.
When seleccione el <boton> de filtros.
Then el sistema le permitirá filtrar el <catalogo de asesores> por nombre o reputación.

Examples:
| granjero | boton de filtro | catalogo de asesores filtrado   |
| Martin   | Nombre          | Luis A., Marco S.               |
| Nadia    | Reputación      | Nicolás M., Luisa C.            |