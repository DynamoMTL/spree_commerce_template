- view: spree_credit_cards
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: address_id
    type: int
    sql: ${TABLE}.address_id

  - dimension: cc_type
    sql: ${TABLE}.cc_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: default
    type: yesno
    sql: ${TABLE}.`default`

  - dimension: gateway_customer_profile_id
    sql: ${TABLE}.gateway_customer_profile_id

  - dimension: gateway_payment_profile_id
    sql: ${TABLE}.gateway_payment_profile_id

  - dimension: last_digits
    sql: ${TABLE}.last_digits

  - dimension: month
    sql: ${TABLE}.month

  - dimension: name
    sql: ${TABLE}.name

  - dimension: payment_method_id
    type: int
    sql: ${TABLE}.payment_method_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - dimension: year
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [id, name]

