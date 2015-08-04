- view: spree_line_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: additional_tax_total
    type: number
    sql: ${TABLE}.additional_tax_total

  - dimension: adjustment_total
    type: number
    sql: ${TABLE}.adjustment_total

  - dimension: cost_price
    type: number
    sql: ${TABLE}.cost_price

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: currency
    sql: ${TABLE}.currency

  - dimension: included_tax_total
    type: number
    sql: ${TABLE}.included_tax_total

  - dimension: order_id
    type: int
    sql: ${TABLE}.order_id

  - dimension: pre_tax_amount
    type: number
    sql: ${TABLE}.pre_tax_amount

  - dimension: price
    type: number
    sql: ${TABLE}.price

  - dimension: promo_total
    type: number
    sql: ${TABLE}.promo_total

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: tax_category_id
    type: int
    sql: ${TABLE}.tax_category_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: variant_id
    type: int
    sql: ${TABLE}.variant_id

  - measure: count
    type: count
    drill_fields: [id]
