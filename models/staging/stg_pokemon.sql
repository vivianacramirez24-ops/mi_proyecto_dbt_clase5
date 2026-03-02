with source as (

    select *
    from {{ source('airbyte', 'pokemon') }}

),

final as (

    select
        id as pokemon_id,
        name as pokemon_name

    from source

)

select * from final