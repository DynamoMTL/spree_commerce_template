- view: spree_addresses
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: address1
    sql: ${TABLE}.address1

  - dimension: address2
    sql: ${TABLE}.address2

  - dimension: alternative_phone
    sql: ${TABLE}.alternative_phone

  - dimension: city
    sql: ${TABLE}.city

  - dimension: company
    sql: ${TABLE}.company

  - dimension: country_id
    type: int
    sql: ${TABLE}.country_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: firstname
    sql: ${TABLE}.firstname

  - dimension: lastname
    sql: ${TABLE}.lastname

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: state_id
    type: int
    sql: ${TABLE}.state_id

  - dimension: state_name
    sql: ${TABLE}.state_name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: zipcode
    sql: ${TABLE}.zipcode

  - measure: count
    type: count
    drill_fields: [id, firstname, lastname, state_name]

