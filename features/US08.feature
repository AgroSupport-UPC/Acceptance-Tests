Feature: US08 Visualización de publicaciones de los asesores
    Como granjero con poca experiencia, 
    quiero poder ver las publicaciones de los asesores 
    para obtener información útil y solicitar asesoramiento en base a esas publicaciones.

Scenario: Visualizar publicaciones de asesores
Given el <granjero> con poca experiencia desea ver las publicaciones de los asesores.
When haga clic en el botón de publicaciones.
Then el sistema le mostrará una <lista de las publicaciones de los asesores>. 

Examples:
| granjero | lista de las publicaciones de los asesores | 
| Pablo    | En temporada de invierno, ten en cuenta... | 
| Ana      | Algunos fertilizantes que podrías usar.... | 