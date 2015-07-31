- view: spree_assets
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: alt
    sql: ${TABLE}.alt

  - dimension: attachment_content_type
    sql: ${TABLE}.attachment_content_type

  - dimension: attachment_file_name
    sql: ${TABLE}.attachment_file_name

  - dimension: attachment_file_size
    type: int
    sql: ${TABLE}.attachment_file_size

  - dimension: attachment_height
    type: int
    sql: ${TABLE}.attachment_height

  - dimension_group: attachment_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.attachment_updated_at

  - dimension: attachment_width
    type: int
    sql: ${TABLE}.attachment_width

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: type
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: viewable_id
    type: int
    sql: ${TABLE}.viewable_id

  - dimension: viewable_type
    sql: ${TABLE}.viewable_type

  - measure: count
    type: count
    drill_fields: [id, attachment_file_name]

