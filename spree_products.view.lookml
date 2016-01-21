- view: spree_products
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: available
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.available_on

  - dimension: can_be_part
    type: int
    sql: ${TABLE}.can_be_part

  - dimension: cchs_eligible
    type: int
    sql: ${TABLE}.cchs_eligible

  - dimension: cloaked
    type: int
    sql: ${TABLE}.cloaked

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: decouple_inventory_from_parts
    type: int
    sql: ${TABLE}.decouple_inventory_from_parts

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: description2
    type: string
    sql: ${TABLE}.description2

  - dimension_group: flag_as_new
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.flag_as_new_at

  - dimension: gift_card
    type: int
    sql: ${TABLE}.gift_card

  - dimension: individual_sale
    type: int
    sql: ${TABLE}.individual_sale

  - dimension: kit_image_content_type
    type: string
    sql: ${TABLE}.kit_image_content_type

  - dimension: kit_image_file_name
    type: string
    sql: ${TABLE}.kit_image_file_name

  - dimension: kit_image_file_size
    type: int
    sql: ${TABLE}.kit_image_file_size

  - dimension_group: kit_image_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.kit_image_updated_at

  - dimension: main_image_content_type
    type: string
    sql: ${TABLE}.main_image_content_type

  - dimension: main_image_file_name
    type: string
    sql: ${TABLE}.main_image_file_name

  - dimension: main_image_file_size
    type: int
    sql: ${TABLE}.main_image_file_size

  - dimension_group: main_image_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.main_image_updated_at

  - dimension: meta_description
    type: string
    sql: ${TABLE}.meta_description

  - dimension: meta_keywords
    type: string
    sql: ${TABLE}.meta_keywords

  - dimension: meta_title
    type: string
    sql: ${TABLE}.meta_title

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: permalink
    type: string
    sql: ${TABLE}.permalink

  - dimension: promotionable
    type: int
    sql: ${TABLE}.promotionable

  - dimension: shipping_category_id
    type: int
    sql: ${TABLE}.shipping_category_id

  - dimension: show_in_footer
    type: int
    sql: ${TABLE}.show_in_footer

  - dimension: slug
    type: string
    sql: ${TABLE}.slug

  - dimension: solution
    type: int
    sql: ${TABLE}.solution

  - dimension: specs
    type: string
    sql: ${TABLE}.specs

  - dimension: subtitle
    type: string
    sql: ${TABLE}.subtitle

  - dimension: summary
    type: string
    sql: ${TABLE}.summary

  - dimension: tax_category_id
    type: int
    sql: ${TABLE}.tax_category_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: video_url
    type: string
    sql: ${TABLE}.video_url

  - measure: count
    type: count
    drill_fields: [id, main_image_file_name, kit_image_file_name, name]

