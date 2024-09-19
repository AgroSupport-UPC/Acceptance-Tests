Feature: US14 Visualización de la sección de inicio de la Landing Page
    Como potencial usuario 
    quiero acceder a una página de inicio 
    para conocer la idea principal de la aplicación y ver un diseño agradable.

Scenario: Visualización de página de inicio
    Given el <usuario> desea conocer sobre la aplicación.
    When ingresa al Landing Page.
    Then se mostrará la <pagina inicial> sencilla que da a entender la idea principal. 

Examples:
| usuario | pagina inicial                | 
| Pablo   | Bienvenidos a AgroSupport.... | 
| Ana     | Bienvenidos a AgroSupport.... |  
