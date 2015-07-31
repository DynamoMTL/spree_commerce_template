- view: spree_payments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: avs_response
    sql: ${TABLE}.avs_response

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: cvv_response_code
    sql: ${TABLE}.cvv_response_code

  - dimension: cvv_response_message
    sql: ${TABLE}.cvv_response_message

  - dimension: number
    sql: ${TABLE}.number

  - dimension: order_id
    type: int
    sql: ${TABLE}.order_id

  - dimension: payment_method_id
    type: int
    sql: ${TABLE}.payment_method_id

  - dimension: response_code
    sql: ${TABLE}.response_code

  - dimension: source_id
    type: int
    sql: ${TABLE}.source_id

  - dimension: source_type
    sql: ${TABLE}.source_type

  - dimension: state
    sql: ${TABLE}.state

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

