- view: spree_taxons_prototypes
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: prototype_id
    type: int
    sql: ${TABLE}.prototype_id

  - dimension: taxon_id
    type: int
    sql: ${TABLE}.taxon_id

  - measure: count
    type: count
    drill_fields: [id]

