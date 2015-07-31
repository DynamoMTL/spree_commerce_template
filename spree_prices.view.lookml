- view: spree_prices
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: currency
    sql: ${TABLE}.currency

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: variant_id
    type: int
    sql: ${TABLE}.variant_id

  - measure: count
    type: count
    drill_fields: [id]

