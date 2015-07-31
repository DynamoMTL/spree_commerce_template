- view: spree_shipping_method_categories
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: shipping_category_id
    type: int
    sql: ${TABLE}.shipping_category_id

  - dimension: shipping_method_id
    type: int
    sql: ${TABLE}.shipping_method_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

