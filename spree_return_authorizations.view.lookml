- view: spree_return_authorizations
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: memo
    type: string
    sql: ${TABLE}.memo

  - dimension: number
    type: string
    sql: ${TABLE}.number

  - dimension: order_id
    type: int
    sql: ${TABLE}.order_id

  - dimension: return_authorization_reason_id
    type: int
    sql: ${TABLE}.return_authorization_reason_id

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension: stock_location_id
    type: int
    sql: ${TABLE}.stock_location_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  # FIELDS FROM OTHER TABLES

  - dimension: reason
    sql: ${return_authorization_reasons.name}


  - measure: count
    type: count
    drill_fields: [id]

