- view: spree_skrill_transactions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: currency
    sql: ${TABLE}.currency

  - dimension: customer_id
    type: int
    sql: ${TABLE}.customer_id

  - dimension: email
    sql: ${TABLE}.email

  - dimension: payment_type
    sql: ${TABLE}.payment_type

  - dimension: transaction_id
    type: int
    sql: ${TABLE}.transaction_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

