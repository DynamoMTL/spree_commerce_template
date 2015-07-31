- view: spree_users
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: authentication_token
    sql: ${TABLE}.authentication_token

  - dimension: bill_address_id
    type: int
    sql: ${TABLE}.bill_address_id

  - dimension_group: confirmation_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.confirmation_sent_at

  - dimension: confirmation_token
    sql: ${TABLE}.confirmation_token

  - dimension_group: confirmed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.confirmed_at

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: current_sign_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.current_sign_in_at

  - dimension: current_sign_in_ip
    sql: ${TABLE}.current_sign_in_ip

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: email
    sql: ${TABLE}.email

  - dimension: encrypted_password
    sql: ${TABLE}.encrypted_password

  - dimension: failed_attempts
    type: int
    sql: ${TABLE}.failed_attempts

  - dimension_group: last_request
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_request_at

  - dimension_group: last_sign_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_sign_in_at

  - dimension: last_sign_in_ip
    sql: ${TABLE}.last_sign_in_ip

  - dimension_group: locked
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.locked_at

  - dimension: login
    sql: ${TABLE}.login

  - dimension: password_salt
    sql: ${TABLE}.password_salt

  - dimension: perishable_token
    sql: ${TABLE}.perishable_token

  - dimension: persistence_token
    sql: ${TABLE}.persistence_token

  - dimension_group: remember_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.remember_created_at

  - dimension: remember_token
    sql: ${TABLE}.remember_token

  - dimension_group: reset_password_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reset_password_sent_at

  - dimension: reset_password_token
    sql: ${TABLE}.reset_password_token

  - dimension: ship_address_id
    type: int
    sql: ${TABLE}.ship_address_id

  - dimension: sign_in_count
    type: int
    sql: ${TABLE}.sign_in_count

  - dimension: spree_api_key
    sql: ${TABLE}.spree_api_key

  - dimension: unlock_token
    sql: ${TABLE}.unlock_token

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

