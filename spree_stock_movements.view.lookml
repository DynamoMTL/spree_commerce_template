- view: spree_stock_movements
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: action
    sql: ${TABLE}.action

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: originator_id
    type: int
    sql: ${TABLE}.originator_id

  - dimension: originator_type
    sql: ${TABLE}.originator_type

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: stock_item_id
    type: int
    sql: ${TABLE}.stock_item_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

