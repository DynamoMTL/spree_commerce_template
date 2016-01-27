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
    type: string
    sql: ${TABLE}.avs_response

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: cvv_response_code
    type: string
    sql: ${TABLE}.cvv_response_code

  - dimension: cvv_response_message
    type: string
    sql: ${TABLE}.cvv_response_message

  - dimension: identifier
    type: string
    sql: ${TABLE}.identifier

  - dimension: order_id
    type: int
    sql: ${TABLE}.order_id

  - dimension: payment_method_id
    type: int
    sql: ${TABLE}.payment_method_id

  - dimension: response_code
    type: string
    sql: ${TABLE}.response_code

  - dimension: source_id
    type: int
    sql: ${TABLE}.source_id

  - dimension: source_type
    type: string
    sql: ${TABLE}.source_type

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

