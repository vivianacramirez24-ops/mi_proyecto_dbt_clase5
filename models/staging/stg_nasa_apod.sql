with source as (

    select *
    from {{ source('airbyte', 'nasa_apod') }}

),

final as (

    select
        date as apod_date,
        title,
        explanation,
        url,
        media_type,
        case 
            when lower(media_type) = 'image' then 1
            else 0
        end as is_image

    from source

)

select * from final