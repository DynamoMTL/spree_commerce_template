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

  - dimension: cchs_requested
    type: int
    sql: ${TABLE}.cchs_requested

  - dimension: channel
    type: string
    sql: ${TABLE}.channel

  - dimension_group: completed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.completed_at

  - dimension: confirmation_code
    type: string
    sql: ${TABLE}.confirmation_code

  - dimension: confirmation_delivered
    type: int
    sql: ${TABLE}.confirmation_delivered

  - dimension: considered_risky
    type: int
    sql: ${TABLE}.considered_risky

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: created_by_id
    type: int
    sql: ${TABLE}.created_by_id

  - dimension: currency
    type: string
    sql: ${TABLE}.currency

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: first_name
    type: string
    sql: ${TABLE}.first_name

  - dimension: friendbuy
    type: int
    sql: ${TABLE}.friendbuy

  - dimension: guest_checkout
    type: int
    sql: ${TABLE}.guest_checkout

  - dimension: guest_token
    type: string
    sql: ${TABLE}.guest_token

  - dimension: included_tax_total
    type: number
    sql: ${TABLE}.included_tax_total

  - dimension_group: invoice
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.invoice_date

  - dimension: invoice_number
    type: int
    sql: ${TABLE}.invoice_number

  - dimension: item_count
    type: int
    sql: ${TABLE}.item_count

  - dimension: item_total
    type: number
    sql: ${TABLE}.item_total

  - dimension: last_ip_address
    type: string
    sql: ${TABLE}.last_ip_address

  - dimension: last_name
    type: string
    sql: ${TABLE}.last_name

  - dimension: number
    type: string
    sql: ${TABLE}.number

  - dimension: payment_state
    type: string
    sql: ${TABLE}.payment_state

  - dimension: payment_total
    type: number
    sql: ${TABLE}.payment_total

  - dimension: phone
    type: string
    sql: ${TABLE}.phone

  - dimension: promo_total
    type: number
    sql: ${TABLE}.promo_total

  - dimension: ship_address_id
    type: int
    sql: ${TABLE}.ship_address_id

  - dimension: shipment_state
    type: string
    sql: ${TABLE}.shipment_state

  - dimension: shipment_total
    type: number
    sql: ${TABLE}.shipment_total

  - dimension: shipping_method_id
    type: int
    sql: ${TABLE}.shipping_method_id

  - dimension: special_instructions
    type: string
    sql: ${TABLE}.special_instructions

  - dimension: state
    type: string
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
    drill_fields: [id, first_name, last_name]
  
  - measure: total_items
    type: sum
    sql: ${TABLE}.item_count
  
  - measure: average_items_in_order
    type: avg
    sql: ${TABLE}.item_count

