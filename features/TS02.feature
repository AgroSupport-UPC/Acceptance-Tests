Feature: TS02 Uso de un API para alojar imágenes
    Como desarrollador 
    quiero integrar la API de almacenamiento de Firebase 
    para que los usuarios puedan subir y visualizar sus imágenes de foto de perfil y publicaciones.

Scenario:  Subir imagen en la aplicación
    Given el usuario desea subir una imagen en nuestra plataforma.
    When se reciba la imagen en el formato compatible.
    Then el sistema sube la imagen usando la API del almacenamiento de Firebase para generar el enlace de visualización. 

Examples:
| usuario | imagen  | enlace                                              |
| Pablo   | imagen1 | https://firebasestorage.googleapis.com/v0/b/imagen1 |
| Ana     | imagen2 | https://firebasestorage.googleapis.com/v0/b/imagen2 |
