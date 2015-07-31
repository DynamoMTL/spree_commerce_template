- view: spree_product_option_types
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: option_type_id
    type: int
    sql: ${TABLE}.option_type_id

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: product_id
    type: int
    sql: ${TABLE}.product_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

