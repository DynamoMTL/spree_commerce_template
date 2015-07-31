- view: spree_orders
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: additional_tax_total
    type: number
    sql: ${TABLE}.additional_tax_total

  - dimension: adjustment_total
    type: number
    sql: ${TABLE}.adjustment_total

  - dimension_group: approved
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.approved_at

  - dimension: approver_id
    type: int
    sql: ${TABLE}.approver_id

  - dimension: bill_address_id
    type: int
    sql: ${TABLE}.bill_address_id

  - dimension_group: canceled
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.canceled_at

  - dimension: canceler_id
    type: int
    sql: ${TABLE}.canceler_id

  - dimension: channel
    sql: ${TABLE}.channel

  - dimension_group: completed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.completed_at

  - dimension: confirmation_delivered
    type: yesno
    sql: ${TABLE}.confirmation_delivered

  - dimension: considered_risky
    type: yesno
    sql: ${TABLE}.considered_risky

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: created_by_id
    type: int
    sql: ${TABLE}.created_by_id

  - dimension: currency
    sql: ${TABLE}.currency

  - dimension: email
    sql: ${TABLE}.email

  - dimension: guest_token
    sql: ${TABLE}.guest_token

  - dimension: included_tax_total
    type: number
    sql: ${TABLE}.included_tax_total

  - dimension: item_count
    type: int
    sql: ${TABLE}.item_count

  - dimension: item_total
    type: number
    sql: ${TABLE}.item_total

  - dimension: last_ip_address
    sql: ${TABLE}.last_ip_address

  - dimension: number
    sql: ${TABLE}.number

  - dimension: payment_state
    sql: ${TABLE}.payment_state

  - dimension: payment_total
    type: number
    sql: ${TABLE}.payment_total

  - dimension: promo_total
    type: number
    sql: ${TABLE}.promo_total

  - dimension: ship_address_id
    type: int
    sql: ${TABLE}.ship_address_id

  - dimension: shipment_state
    sql: ${TABLE}.shipment_state

  - dimension: shipment_total
    type: number
    sql: ${TABLE}.shipment_total

  - dimension: shipping_method_id
    type: int
    sql: ${TABLE}.shipping_method_id

  - dimension: special_instructions
    sql: ${TABLE}.special_instructions

  - dimension: state
    sql: ${TABLE}.state

  - dimension: state_lock_version
    type: int
    sql: ${TABLE}.state_lock_version

  - dimension: store_id
    type: int
    sql: ${TABLE}.store_id

  - dimension: total
    type: number
    sql: ${TABLE}.total

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id]

