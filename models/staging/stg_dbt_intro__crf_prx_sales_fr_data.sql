with 

source as (

    select * from {{ source('dbt_intro', 'crf_prx_sales_fr_data') }}

),

renamed as (

    select
        barcode_ean13,
        site_key,
        product_category,
        pdt_sub_category,
        date,
        ca

    from source

)

select * from renamed
