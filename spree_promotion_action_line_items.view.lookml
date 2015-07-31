- view: spree_promotion_action_line_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: promotion_action_id
    type: int
    sql: ${TABLE}.promotion_action_id

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: variant_id
    type: int
    sql: ${TABLE}.variant_id

  - measure: count
    type: count
    drill_fields: [id]

