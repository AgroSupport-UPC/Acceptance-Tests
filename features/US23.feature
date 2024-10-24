Feature: US22 Búsqueda y Filtrado de Citas	
    Como usuario,
    quiero buscar y filtrar mis citas programadas
    para encontrar fácilmente una cita específica o consultar citas en una fecha determinada.

Scenario: Búsqueda de citas
Given el <usuario> está en la sección de citas de la aplicación.
When se elija la <fecha a filtrar> para la cita
Then el sistema mostrará una <lista de citas> que coincidan con la fecha elegida.

Examples:
| usuario | fecha  | lista de citas                         |
| Fabián  | 08/10  | Cita con Marcos..., Cita con Marta...  |
| Matías  | 20/10  | "No se encontraron citas"              |