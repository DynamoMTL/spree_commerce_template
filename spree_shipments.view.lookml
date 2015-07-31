- view: spree_shipments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: additional_tax_total
    type: number
    sql: ${TABLE}.additional_tax_total

  - dimension: address_id
    type: int
    sql: ${TABLE}.address_id

  - dimension: adjustment_total
    type: number
    sql: ${TABLE}.adjustment_total

  - dimension: cost
    type: number
    sql: ${TABLE}.cost

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: included_tax_total
    type: number
    sql: ${TABLE}.included_tax_total

  - dimension: number
    sql: ${TABLE}.number

  - dimension: order_id
    type: int
    sql: ${TABLE}.order_id

  - dimension: pre_tax_amount
    type: number
    sql: ${TABLE}.pre_tax_amount

  - dimension: promo_total
    type: number
    sql: ${TABLE}.promo_total

  - dimension_group: shipped
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.shipped_at

  - dimension: state
    sql: ${TABLE}.state

  - dimension: stock_location_id
    type: int
    sql: ${TABLE}.stock_location_id

  - dimension: tracking
    sql: ${TABLE}.tracking

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

