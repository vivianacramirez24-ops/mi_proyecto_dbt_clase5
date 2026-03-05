## Autor

Claudia Coronel  
Maestría en Inteligencia Artificial y Análisis de Datos


\# Proyecto dbt – Integración de APIs (NASA + Pokémon)



\## Descripción

Proyecto de modelado en dbt utilizando datos ingestados desde APIs externas

(NASA APOD y Pokémon API) vía Airbyte hacia MotherDuck.



---



\# Arquitectura del proyecto



El pipeline sigue una arquitectura en capas:



Sources → Staging → Intermediate → Mart



\### Staging

Modelos encargados de limpiar y normalizar los datos provenientes de las APIs.



\- `stg\_nasa\_apod`

\- `stg\_pokemon`



\### Intermediate

Modelos que combinan y agregan datos de múltiples fuentes.



\- `int\_api\_summary`



\### Mart

Modelo final tipo \*\*OBT (One Big Table)\*\* preparado para consumo analítico o dashboards.



\- `obt\_api\_dashboard`



---



\# Ejecución del proyecto



Instalar dependencias:





dbt deps





Ejecutar pipeline completo (modelos + tests):





dbt build





Generar documentación:





dbt docs generate

dbt docs serve





---



\# Testing



El proyecto incluye múltiples tipos de tests:



\### Tests genéricos

\- `not\_null`

\- `unique`

\- `accepted\_values`



\### Tests de dbt-expectations

\- `expect\_table\_row\_count\_to\_be\_between`

\- `expect\_column\_values\_to\_be\_between`

\- `expect\_column\_values\_to\_be\_in\_set`



\### Tests singulares personalizados

\- `assert\_apod\_date\_not\_future`

\- `assert\_pokemon\_positive\_metrics`



Todos los tests se ejecutan automáticamente mediante:





dbt build





---



\# Documentación



El proyecto incluye documentación completa de:



\- modelos

\- columnas clave

\- sources

\- tests



La documentación puede visualizarse ejecutando:





dbt docs generate

dbt docs serve





---



\# DAG del proyecto



\### DAG inicial (Clase 5)



!\[DAG Clase 5](dbt-dag.png)



\### DAG final con documentación y tests (Clase 6)



!\[DAG Clase 6](dbt-dag\_tests.png)



---



\# Tecnologías utilizadas



\- Airbyte

\- DuckDB / MotherDuck

\- dbt

\- dbt-expectations

\- Git / GitHub

