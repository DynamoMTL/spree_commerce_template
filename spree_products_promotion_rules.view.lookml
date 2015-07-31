- view: spree_products_promotion_rules
  fields:

  - dimension: product_id
    type: int
    sql: ${TABLE}.product_id

  - dimension: promotion_rule_id
    type: int
    sql: ${TABLE}.promotion_rule_id

  - measure: count
    type: count
    drill_fields: []

