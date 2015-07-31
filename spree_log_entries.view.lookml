- view: spree_log_entries
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: details
    sql: ${TABLE}.details

  - dimension: source_id
    type: int
    sql: ${TABLE}.source_id

  - dimension: source_type
    sql: ${TABLE}.source_type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

