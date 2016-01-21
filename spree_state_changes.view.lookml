- view: spree_state_changes
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: next_state
    type: string
    sql: ${TABLE}.next_state

  - dimension: previous_state
    type: string
    sql: ${TABLE}.previous_state

  - dimension: stateful_id
    type: int
    sql: ${TABLE}.stateful_id

  - dimension: stateful_type
    type: string
    sql: ${TABLE}.stateful_type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, name]

