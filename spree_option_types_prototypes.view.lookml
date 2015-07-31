- view: spree_option_types_prototypes
  fields:

  - dimension: option_type_id
    type: int
    sql: ${TABLE}.option_type_id

  - dimension: prototype_id
    type: int
    sql: ${TABLE}.prototype_id

  - measure: count
    type: count
    drill_fields: []

