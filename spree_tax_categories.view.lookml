- view: spree_tax_categories
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

  - dimension: description
    sql: ${TABLE}.description

  - dimension: is_default
    type: yesno
    sql: ${TABLE}.is_default

  - dimension: name
    sql: ${TABLE}.name

  - dimension: tax_code
    sql: ${TABLE}.tax_code

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

