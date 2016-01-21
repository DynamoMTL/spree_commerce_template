- view: spree_variants
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: cost_currency
    type: string
    sql: ${TABLE}.cost_currency

  - dimension: cost_price
    type: number
    sql: ${TABLE}.cost_price

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: depth
    type: number
    sql: ${TABLE}.depth

  - dimension: height
    type: number
    sql: ${TABLE}.height

  - dimension: is_master
    type: int
    sql: ${TABLE}.is_master

  - dimension: original_price
    type: number
    sql: ${TABLE}.original_price

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: preorder
    type: int
    sql: ${TABLE}.preorder

  - dimension: product_id
    type: int
    sql: ${TABLE}.product_id

  - dimension: sale
    type: int
    sql: ${TABLE}.sale

  - dimension: sku
    type: string
    sql: ${TABLE}.sku

  - dimension: stock_items_count
    type: int
    sql: ${TABLE}.stock_items_count

  - dimension: tax_category_id
    type: int
    sql: ${TABLE}.tax_category_id

  - dimension: track_inventory
    type: int
    sql: ${TABLE}.track_inventory

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: weight
    type: number
    sql: ${TABLE}.weight

  - dimension: width
    type: number
    sql: ${TABLE}.width

  - measure: count
    type: count
    drill_fields: [id]

