Feature: US17 Visualización de la sección 'Características' de la Landing Page
    Como potencial usuario 
    quiero acceder a una página sobre las características 
    para conocer las principales funcionalidades de la aplicación.

Scenario: Visualización de la sección
Given el <usuario> desea conocer sobre las características de la aplicación.
When ingresa al Landing Page.
And ingresa a la sección 'Características'.
Then se mostrará la <pagina Caracteristicas> en la que detalla información sobre las funcionalidades principales que ofrece la aplicación. 

Examples:
| usuario | pagina Caracteristicas         | 
| Pablo   | El producto de AgroSupport.... | 
| Ana     | El producto de AgroSupport.... |
