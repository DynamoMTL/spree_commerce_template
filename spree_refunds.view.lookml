- view: spree_refunds
  fields:

  - dimension: id
    primary_key: true
    type: int
    hidden: true
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: payment_id
    type: int
    sql: ${TABLE}.payment_id

  - dimension: refund_reason_id
    type: int
    sql: ${TABLE}.refund_reason_id

  - dimension: reimbursement_id
    type: int
    sql: ${TABLE}.reimbursement_id

  - dimension: transaction_id
    sql: ${TABLE}.transaction_id

  - measure: count
    type: count
    drill_fields: [id]
  
  - measure: total
    type: sum
    sql: ${TABLE}.amount
    value_format: '$#,###'
