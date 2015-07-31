- view: spree_payment_methods
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: auto_capture
    type: yesno
    sql: ${TABLE}.auto_capture

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension: display_on
    sql: ${TABLE}.display_on

  - dimension: name
    sql: ${TABLE}.name

  - dimension: preferences
    sql: ${TABLE}.preferences

  - dimension: type
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

