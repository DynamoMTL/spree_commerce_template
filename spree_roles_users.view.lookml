- view: spree_roles_users
  fields:

  - dimension: role_id
    type: int
    sql: ${TABLE}.role_id

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: []

