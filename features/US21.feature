Feature: US21 Visualización de Historial de Citas
    Como usuario,
    quiero ver un historial de mis citas anteriores
    para tener un registro de las reuniones y sus detalles.

Scenario: Acceso al historial de citas
Given el <usuario> está en la sección de perfil de su cuenta.
When selecciona la opción para ver el <historial> de citas.
Then podrá ver una <lista> de todas las citas anteriores, incluyendo fechas, horas y detalles de las reuniones.

Examples:
| usuario | historial | lista de citas anteriores                       |
| Pedro   | Citas     | Cita 1: 10/10/2021, 9:00 am, Asesor: Mario A.   |
| Luisa   | Citas     | Cita 1: 11/10/2021, 10:00 am, Asesor: Sofía B.  |
