- view: spree_reimbursements
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: customer_return_id
    type: int
    sql: ${TABLE}.customer_return_id

  - dimension: number
    sql: ${TABLE}.number

  - dimension: order_id
    type: int
    sql: ${TABLE}.order_id

  - dimension: reimbursement_status
    sql: ${TABLE}.reimbursement_status

  - dimension: total
    type: number
    sql: ${TABLE}.total

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

