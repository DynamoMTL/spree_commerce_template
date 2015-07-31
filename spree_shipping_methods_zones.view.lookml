- view: spree_shipping_methods_zones
  fields:

  - dimension: shipping_method_id
    type: int
    sql: ${TABLE}.shipping_method_id

  - dimension: zone_id
    type: int
    sql: ${TABLE}.zone_id

  - measure: count
    type: count
    drill_fields: []

