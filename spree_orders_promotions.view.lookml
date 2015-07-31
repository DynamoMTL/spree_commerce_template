- view: spree_orders_promotions
  fields:

  - dimension: order_id
    type: int
    sql: ${TABLE}.order_id

  - dimension: promotion_id
    type: int
    sql: ${TABLE}.promotion_id

  - measure: count
    type: count
    drill_fields: []

