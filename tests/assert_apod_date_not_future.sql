-- Falla si hay registros APOD con fecha futura
select *
from {{ ref('stg_nasa_apod') }}
where try_cast(apod_date as date) > current_date