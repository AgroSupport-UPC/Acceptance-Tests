Feature: US22 Cancelación de Citas	
    Como usuario,
    quiero poder cancelar mis citas existentes
    para ajustarlas a mis nuevas disponibilidades o necesidades.

Scenario: Cancelación de una cita
Given el <usuario> tiene una cita programada y desea cancelarla.
When selecciona la <cita> del listado de citas.
And selecciona la opción para <cancelar> la cita.
Then el sistema cancelará la cita y notificará al usuario y al asesor sobre el cambio.

Examples:
| usuario | cita            | estado     |
| Héctor  | 08/11 12:00 PM  | cancelada  |
| Carla   | 29/10 07:00 PM  | cancelada  |