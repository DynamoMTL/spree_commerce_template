- view: spree_states
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: abbr
    sql: ${TABLE}.abbr

  - dimension: country_id
    type: int
    sql: ${TABLE}.country_id

  - dimension: name
    sql: ${TABLE}.name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

