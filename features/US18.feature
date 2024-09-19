Feature: US18 Visualización de la sección 'Contacto' de la Landing Page
    Como potencial usuario 
    quiero acceder a una página de contacto 
    para poder contactar con la empresa en caso tenga algún problema, duda o sugerencia.

Scenario: Visualización de la sección
    Given el <usuario> desea contactar con el área de soporte de la empresa.
    When ingresa al Landing Page.
    And ingresa a la sección 'Contacto'.
    Then se mostrará la <pagina Contacto>, en la que se muestra los medios de contacto que puede usar el usuario para hacer consultas

Examples:
| usuario | pagina Contacto             | 
| Pablo   | Contacto de AgroSupport.... | 
| Ana     | Contacto de AgroSupport.... | 

