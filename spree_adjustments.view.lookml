- view: spree_adjustments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: adjustable_id
    type: int
    sql: ${TABLE}.adjustable_id

  - dimension: adjustable_type
    sql: ${TABLE}.adjustable_type

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: eligible
    type: yesno
    sql: ${TABLE}.eligible

  - dimension: included
    type: yesno
    sql: ${TABLE}.included

  - dimension: label
    sql: ${TABLE}.label

  - dimension: mandatory
    type: yesno
    sql: ${TABLE}.mandatory

  - dimension: order_id
    type: int
    sql: ${TABLE}.order_id

  - dimension: source_id
    type: int
    sql: ${TABLE}.source_id

  - dimension: source_type
    sql: ${TABLE}.source_type

  - dimension: state
    sql: ${TABLE}.state

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

