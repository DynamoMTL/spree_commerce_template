- view: spree_stock_transfers
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: destination_location_id
    type: int
    sql: ${TABLE}.destination_location_id

  - dimension: number
    sql: ${TABLE}.number

  - dimension: reference
    sql: ${TABLE}.reference

  - dimension: source_location_id
    type: int
    sql: ${TABLE}.source_location_id

  - dimension: type
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

