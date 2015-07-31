- view: spree_zone_members
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: zone_id
    type: int
    sql: ${TABLE}.zone_id

  - dimension: zoneable_id
    type: int
    sql: ${TABLE}.zoneable_id

  - dimension: zoneable_type
    sql: ${TABLE}.zoneable_type

  - measure: count
    type: count
    drill_fields: [id]

