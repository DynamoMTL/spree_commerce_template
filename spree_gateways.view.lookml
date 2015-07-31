- view: spree_gateways
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension: environment
    sql: ${TABLE}.environment

  - dimension: name
    sql: ${TABLE}.name

  - dimension: preferences
    sql: ${TABLE}.preferences

  - dimension: server
    sql: ${TABLE}.server

  - dimension: test_mode
    type: yesno
    sql: ${TABLE}.test_mode

  - dimension: type
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

