- view: spree_promotion_rules
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: code
    sql: ${TABLE}.code

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: preferences
    sql: ${TABLE}.preferences

  - dimension: product_group_id
    type: int
    sql: ${TABLE}.product_group_id

  - dimension: promotion_id
    type: int
    sql: ${TABLE}.promotion_id

  - dimension: type
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id]

