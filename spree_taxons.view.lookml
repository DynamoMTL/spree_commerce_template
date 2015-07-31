- view: spree_taxons
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: depth
    type: int
    sql: ${TABLE}.depth

  - dimension: description
    sql: ${TABLE}.description

  - dimension: icon_content_type
    sql: ${TABLE}.icon_content_type

  - dimension: icon_file_name
    sql: ${TABLE}.icon_file_name

  - dimension: icon_file_size
    type: int
    sql: ${TABLE}.icon_file_size

  - dimension_group: icon_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.icon_updated_at

  - dimension: lft
    type: int
    sql: ${TABLE}.lft

  - dimension: meta_description
    sql: ${TABLE}.meta_description

  - dimension: meta_keywords
    sql: ${TABLE}.meta_keywords

  - dimension: meta_title
    sql: ${TABLE}.meta_title

  - dimension: name
    sql: ${TABLE}.name

  - dimension: parent_id
    type: int
    sql: ${TABLE}.parent_id

  - dimension: permalink
    sql: ${TABLE}.permalink

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: rgt
    type: int
    sql: ${TABLE}.rgt

  - dimension: taxonomy_id
    type: int
    sql: ${TABLE}.taxonomy_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name, icon_file_name]

