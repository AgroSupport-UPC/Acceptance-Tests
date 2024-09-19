Feature: US15 Visualización de la sección 'Acerca de' de la Landing Page
    Como potencial usuario 
    quiero acceder a una página sobre el problema que resuelve 
    para conocer el propósito de la aplicación

Scenario: Visualización de la sección 
    Given el <usuario> desea conocer sobre el problema que resuelve la aplicación.
    When ingresa al Landing Page.
    And ingresa a la sección 'Acerca De'.
    Then se mostrará la <pagina Acerca De>, en la que se detalla la problemática que resolverá la aplicación. 

Examples:
| usuario | pagina Acerca De                | 
| Pablo   | AgroSupport es una start-up.... | 
| Ana     | AgroSupport es una start-up.... | 
