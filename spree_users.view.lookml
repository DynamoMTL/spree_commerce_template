- view: spree_users
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: authentication_token
    type: string
    sql: ${TABLE}.authentication_token

  - dimension: bill_address_id
    type: int
    sql: ${TABLE}.bill_address_id

  - dimension_group: confirmation_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.confirmation_sent_at

  - dimension: confirmation_token
    type: string
    sql: ${TABLE}.confirmation_token

  - dimension_group: confirmed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.confirmed_at

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month, raw]
    sql: ${TABLE}.created_at

  - dimension_group: current_sign_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.current_sign_in_at

  - dimension: current_sign_in_ip
    type: string
    sql: ${TABLE}.current_sign_in_ip

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: encrypted_password
    type: string
    sql: ${TABLE}.encrypted_password

  - dimension: failed_attempts
    type: int
    sql: ${TABLE}.failed_attempts

  - dimension: first_name
    type: string
    sql: ${TABLE}.first_name

  - dimension: last_name
    type: string
    sql: ${TABLE}.last_name

  - dimension_group: last_request
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_request_at

  - dimension_group: last_sign_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_sign_in_at

  - dimension: last_sign_in_ip
    type: string
    sql: ${TABLE}.last_sign_in_ip

  - dimension_group: locked
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.locked_at

  - dimension: login
    type: string
    sql: ${TABLE}.login

  - dimension: password_salt
    type: string
    sql: ${TABLE}.password_salt

  - dimension: perishable_token
    type: string
    sql: ${TABLE}.perishable_token

  - dimension: persistence_token
    type: string
    sql: ${TABLE}.persistence_token

  - dimension: phone
    type: string
    sql: ${TABLE}.phone

  - dimension_group: remember_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.remember_created_at

  - dimension: remember_token
    type: string
    sql: ${TABLE}.remember_token

  - dimension_group: reset_password_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reset_password_sent_at

  - dimension: reset_password_token
    type: string
    sql: ${TABLE}.reset_password_token

  - dimension: ship_address_id
    type: int
    sql: ${TABLE}.ship_address_id

  - dimension: sign_in_count
    type: int
    sql: ${TABLE}.sign_in_count

  - dimension: spree_api_key
    type: string
    sql: ${TABLE}.spree_api_key

  - dimension: subscribed
    type: int
    sql: ${TABLE}.subscribed

  - dimension: unlock_token
    type: string
    sql: ${TABLE}.unlock_token

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, first_name, last_name]

