- view: spree_inventory_units
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: line_item_id
    type: int
    sql: ${TABLE}.line_item_id

  - dimension: order_id
    type: int
    sql: ${TABLE}.order_id

  - dimension: pending
    type: yesno
    sql: ${TABLE}.pending

  - dimension: shipment_id
    type: int
    sql: ${TABLE}.shipment_id

  - dimension: state
    sql: ${TABLE}.state

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: variant_id
    type: int
    sql: ${TABLE}.variant_id

  - measure: count
    type: count
    drill_fields: [id]

