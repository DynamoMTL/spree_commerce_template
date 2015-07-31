- view: spree_countries
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: iso
    sql: ${TABLE}.iso

  - dimension: iso3
    sql: ${TABLE}.iso3

  - dimension: iso_name
    sql: ${TABLE}.iso_name

  - dimension: name
    sql: ${TABLE}.name

  - dimension: numcode
    type: int
    sql: ${TABLE}.numcode

  - dimension: states_required
    type: yesno
    sql: ${TABLE}.states_required

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, iso_name, name]

