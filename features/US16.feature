Feature: US16 Visualización de la sección 'Sobre Nosotros' de la Landing Page
    Como potencial usuario 
    quiero acceder a una página sobre la startup 
    para conocer el propósito de la empresa detrás de la aplicación.

Scenario: Visualización de la sección
Given el <usuario> desea conocer sobre la empresa detrás de la aplicación.
When ingresa al Landing Page.
And ingresa a la sección 'Sobre Nosotros'.
Then se mostrará la <pagina Sobre Nosotros>, en la que detalla información sobre la startup, su misión y visión. 

Examples:
| usuario | pagina Sobre Nosotros           | 
| Pablo   | La mision de AgroSupport es.... | 
| Ana     | La mision de AgroSupport es.... | 

