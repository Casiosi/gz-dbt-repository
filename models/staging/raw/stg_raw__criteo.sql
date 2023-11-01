with 

source as (

    select * from {{ source('raw', 'criteo') }}

),

renamed as (

    select
        CAST(date_date AS DATE),
        paid_source,
        campaign_key,
        campgn_name AS campaign_name,
        CAST(ads_cost AS FLOAT64),
        CAST(impression AS FLOAT64),
        CAST(click AS FLOAT64)

    from source

)

select * from renamed
