- view: spree_shipping_rates
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: cost
    type: number
    sql: ${TABLE}.cost

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: selected
    type: yesno
    sql: ${TABLE}.selected

  - dimension: shipment_id
    type: int
    sql: ${TABLE}.shipment_id

  - dimension: shipping_method_id
    type: int
    sql: ${TABLE}.shipping_method_id

  - dimension: tax_rate_id
    type: int
    sql: ${TABLE}.tax_rate_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

