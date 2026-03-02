\# Proyecto dbt Clase 5 – NASA + Pokémon



\## Descripción

Proyecto de modelado en dbt utilizando datos ingestados desde APIs externas

(NASA APOD y Pokémon API) vía Airbyte hacia MotherDuck.



\## Arquitectura

\- Staging: limpieza y normalización de fuentes

\- Intermediate: agregaciones y combinación de fuentes

\- Mart: modelo final tipo OBT para análisis



\## Cómo ejecutar el proyecto



dbt run

dbt docs generate

dbt docs serve



\## DAG generado

!\[DAG dbt](dbt-dag.png)

