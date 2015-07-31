- view: spree_properties_prototypes
  fields:

  - dimension: property_id
    type: int
    sql: ${TABLE}.property_id

  - dimension: prototype_id
    type: int
    sql: ${TABLE}.prototype_id

  - measure: count
    type: count
    drill_fields: []

