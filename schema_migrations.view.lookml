- view: schema_migrations
  fields:

  - dimension: version
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: []

