- view: spree_promotion_actions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: promotion_id
    type: int
    sql: ${TABLE}.promotion_id

  - dimension: type
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id]

