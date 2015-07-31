- view: spree_promotions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: advertise
    type: yesno
    sql: ${TABLE}.advertise

  - dimension: code
    sql: ${TABLE}.code

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.expires_at

  - dimension: match_policy
    sql: ${TABLE}.match_policy

  - dimension: name
    sql: ${TABLE}.name

  - dimension: path
    sql: ${TABLE}.path

  - dimension: promotion_category_id
    type: int
    sql: ${TABLE}.promotion_category_id

  - dimension_group: starts
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.starts_at

  - dimension: type
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: usage_limit
    type: int
    sql: ${TABLE}.usage_limit

  - measure: count
    type: count
    drill_fields: [id, name]

