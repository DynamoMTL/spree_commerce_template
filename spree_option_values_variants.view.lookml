- view: spree_option_values_variants
  fields:

  - dimension: option_value_id
    type: int
    sql: ${TABLE}.option_value_id

  - dimension: variant_id
    type: int
    sql: ${TABLE}.variant_id

  - measure: count
    type: count
    drill_fields: []

