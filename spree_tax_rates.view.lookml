- view: spree_tax_rates
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: included_in_price
    type: yesno
    sql: ${TABLE}.included_in_price

  - dimension: name
    sql: ${TABLE}.name

  - dimension: show_rate_in_label
    type: yesno
    sql: ${TABLE}.show_rate_in_label

  - dimension: tax_category_id
    type: int
    sql: ${TABLE}.tax_category_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: zone_id
    type: int
    sql: ${TABLE}.zone_id

  - measure: count
    type: count
    drill_fields: [id, name]

