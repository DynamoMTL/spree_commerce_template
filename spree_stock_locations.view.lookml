- view: spree_stock_locations
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: address1
    sql: ${TABLE}.address1

  - dimension: address2
    sql: ${TABLE}.address2

  - dimension: admin_name
    sql: ${TABLE}.admin_name

  - dimension: backorderable_default
    type: yesno
    sql: ${TABLE}.backorderable_default

  - dimension: city
    sql: ${TABLE}.city

  - dimension: country_id
    type: int
    sql: ${TABLE}.country_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: default
    type: yesno
    sql: ${TABLE}.`default`

  - dimension: name
    sql: ${TABLE}.name

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: propagate_all_variants
    type: yesno
    sql: ${TABLE}.propagate_all_variants

  - dimension: state_id
    type: int
    sql: ${TABLE}.state_id

  - dimension: state_name
    sql: ${TABLE}.state_name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: zipcode
    sql: ${TABLE}.zipcode

  - measure: count
    type: count
    drill_fields: [id, name, state_name, admin_name]

