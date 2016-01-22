- view: template_user_order_facts
  derived_table:
    sql: |
      select
      user_id
      ,count(*) as lifetime_orders
      ,min(completed_at) as first_order
      ,max(completed_at) as last_order
      ,sum(total) as lifetime_order_value
      ,avg(total) as average_order_value
      
      
      from spree_orders
      where user_id > 0
      group by user_id
      

    indexes: [user_id]
#     sql_trigger_value: SELECT current_date
    
  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: user_id
    type: number
    primary_key: true
    sql: ${TABLE}.user_id

  - dimension: lifetime_orders
    type: number
    sql: ${TABLE}.lifetime_orders

  - dimension_group: first_order
    type: time
    timeframes: [time, date, week, month, year]
    sql: ${TABLE}.first_order
    
  - dimension: completed_qtr
    sql: CONCAT(${first_order_year},' ','Q',FLOOR(MONTH(${first_order_date})/4)+1)

  - dimension_group: last_order
    type: time
    timeframes: [time, date, week, month, year]
    sql: ${TABLE}.last_order

  - dimension: user_lifetime_order_value
    type: number
    sql: ${TABLE}.lifetime_order_value

  - dimension: user_average_order_value
    type: number
    sql: ${TABLE}.average_order_value

  sets:
    detail:
      - user_id
      - lifetime_orders
      - first_order
      - last_order
      - lifetime_order_value
      - average_order_value