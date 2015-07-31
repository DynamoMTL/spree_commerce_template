- view: spree_taxons_promotion_rules
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: promotion_rule_id
    type: int
    sql: ${TABLE}.promotion_rule_id

  - dimension: taxon_id
    type: int
    sql: ${TABLE}.taxon_id

  - measure: count
    type: count
    drill_fields: [id]

