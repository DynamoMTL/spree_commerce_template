- view: spree_stock_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: backorderable
    type: yesno
    sql: ${TABLE}.backorderable

  - dimension: count_on_hand
    type: int
    sql: ${TABLE}.count_on_hand

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: stock_location_id
    type: int
    sql: ${TABLE}.stock_location_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: variant_id
    type: int
    sql: ${TABLE}.variant_id

  - measure: count
    type: count
    drill_fields: [id]

