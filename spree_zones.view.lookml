- view: spree_zones
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: default_tax
    type: yesno
    sql: ${TABLE}.default_tax

  - dimension: description
    sql: ${TABLE}.description

  - dimension: kind
    sql: ${TABLE}.kind

  - dimension: name
    sql: ${TABLE}.name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: zone_members_count
    type: int
    sql: ${TABLE}.zone_members_count

  - measure: count
    type: count
    drill_fields: [id, name]

