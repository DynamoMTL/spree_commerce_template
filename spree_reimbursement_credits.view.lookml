- view: spree_reimbursement_credits
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: creditable_id
    type: int
    sql: ${TABLE}.creditable_id

  - dimension: creditable_type
    sql: ${TABLE}.creditable_type

  - dimension: reimbursement_id
    type: int
    sql: ${TABLE}.reimbursement_id

  - measure: count
    type: count
    drill_fields: [id]

