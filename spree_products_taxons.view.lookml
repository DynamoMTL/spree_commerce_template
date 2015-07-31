- view: spree_products_taxons
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: product_id
    type: int
    sql: ${TABLE}.product_id

  - dimension: taxon_id
    type: int
    sql: ${TABLE}.taxon_id

  - measure: count
    type: count
    drill_fields: [id]

