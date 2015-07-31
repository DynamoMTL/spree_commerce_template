- view: spree_stores
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: code
    sql: ${TABLE}.code

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: default
    type: yesno
    sql: ${TABLE}.`default`

  - dimension: default_currency
    sql: ${TABLE}.default_currency

  - dimension: mail_from_address
    sql: ${TABLE}.mail_from_address

  - dimension: meta_description
    sql: ${TABLE}.meta_description

  - dimension: meta_keywords
    sql: ${TABLE}.meta_keywords

  - dimension: name
    sql: ${TABLE}.name

  - dimension: seo_title
    sql: ${TABLE}.seo_title

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: url
    sql: ${TABLE}.url

  - measure: count
    type: count
    drill_fields: [id, name]

