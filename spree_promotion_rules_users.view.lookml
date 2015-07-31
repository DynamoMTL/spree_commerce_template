- view: spree_promotion_rules_users
  fields:

  - dimension: promotion_rule_id
    type: int
    sql: ${TABLE}.promotion_rule_id

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: []

