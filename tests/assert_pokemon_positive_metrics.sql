-- Falla si hay Pokémon con id no positivo o nombre vacío
select *
from {{ ref('stg_pokemon') }}
where pokemon_id <= 0
   or pokemon_name is null
   or trim(pokemon_name) = ''