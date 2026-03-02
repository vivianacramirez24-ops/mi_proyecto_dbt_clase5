with apod as (

    select *
    from {{ ref('stg_nasa_apod') }}

),

pokemon as (

    select *
    from {{ ref('stg_pokemon') }}

),

pokemon_count as (

    select count(*) as total_pokemon
    from pokemon

),

latest_apod as (

    select *
    from apod
    qualify row_number() over(order by apod_date desc) = 1

)

select
    latest_apod.apod_date,
    latest_apod.title,
    latest_apod.media_type,
    pokemon_count.total_pokemon

from latest_apod
cross join pokemon_count