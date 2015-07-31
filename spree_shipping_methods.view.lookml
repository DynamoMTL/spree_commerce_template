- view: spree_shipping_methods
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: admin_name
    sql: ${TABLE}.admin_name

  - dimension: code
    sql: ${TABLE}.code

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: display_on
    sql: ${TABLE}.display_on

  - dimension: name
    sql: ${TABLE}.name

  - dimension: tax_category_id
    type: int
    sql: ${TABLE}.tax_category_id

  - dimension: tracking_url
    sql: ${TABLE}.tracking_url

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name, admin_name]

