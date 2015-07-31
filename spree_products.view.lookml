- view: spree_products
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: available
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.available_on

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension: meta_description
    sql: ${TABLE}.meta_description

  - dimension: meta_keywords
    sql: ${TABLE}.meta_keywords

  - dimension: meta_title
    sql: ${TABLE}.meta_title

  - dimension: name
    sql: ${TABLE}.name

  - dimension: promotionable
    type: yesno
    sql: ${TABLE}.promotionable

  - dimension: shipping_category_id
    type: int
    sql: ${TABLE}.shipping_category_id

  - dimension: slug
    sql: ${TABLE}.slug

  - dimension: tax_category_id
    type: int
    sql: ${TABLE}.tax_category_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

