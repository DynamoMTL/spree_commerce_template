- view: friendly_id_slugs
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: scope
    sql: ${TABLE}.scope

  - dimension: slug
    sql: ${TABLE}.slug

  - dimension: sluggable_id
    type: int
    sql: ${TABLE}.sluggable_id

  - dimension: sluggable_type
    sql: ${TABLE}.sluggable_type

  - measure: count
    type: count
    drill_fields: [id]

