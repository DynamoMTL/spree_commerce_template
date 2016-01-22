- view: template_subsequent_order_facts
  derived_table:
    indexes: [order_id, user_id, created_at]
    sql: |
      SELECT 
         o.id AS order_id
        ,o.user_id AS user_id
        ,o.created_at AS created_at
        ,SUM(CASE WHEN o.created_at < so.created_at THEN 1 ELSE 0 END) AS subsequent_orders_count
        ,SUM(CASE WHEN o.created_at >= so.created_at THEN 1 ELSE 0 END) AS order_sequence_number
        ,MAX(CASE WHEN o.created_at < so.created_at AND so.created_at < DATE_ADD(o.created_at, INTERVAL 90 DAY) THEN 1 ELSE 0 END) has_subsequent_within_90
        ,MAX(CASE WHEN o.created_at < so.created_at AND so.created_at < DATE_ADD(o.created_at, INTERVAL 180 DAY) THEN 1 ELSE 0 END) has_subsequent_within_180
        ,MAX(CASE WHEN o.created_at < so.created_at AND so.created_at < DATE_ADD(o.created_at, INTERVAL 1 YEAR) THEN 1 ELSE 0 END) has_subsequent_within_365
        ,MIN(CASE WHEN o.created_at < so.created_at THEN so.created_at ELSE NULL END) AS next_order_date

      FROM spree_orders AS o

      LEFT JOIN spree_orders AS so
        ON o.user_id = so.user_id
          
  
      GROUP BY 1,2,3
      ORDER BY o.id, o.created_at

  fields:

  - dimension: order_id
    primary_key: true
    type: number
    sql: ${TABLE}.order_id

  - dimension: user_id
    type: number
    sql: ${TABLE}.user_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: subsequent_orders_count
    type: int
    sql: ${TABLE}.subsequent_orders_count

  - dimension: order_sequence_number
    type: int
    sql: ${TABLE}.order_sequence_number

  - dimension: has_subsequent_within_90
    type: yesno
    sql: ${TABLE}.has_subsequent_within_90

  - dimension: has_subsequent_within_180
    type: yesno
    sql: ${TABLE}.has_subsequent_within_180

  - dimension: has_subsequent_within_365
    type: yesno
    sql: ${TABLE}.has_subsequent_within_365

  - dimension: next_order_date
    sql: ${TABLE}.next_order_date
    
  # Measures
    
  - measure: users_count
    type: count_distinct
    sql: ${user_id}
    
  - measure: orders_with_any_followups_count
    type: count
    filters:
      subsequent_orders_count: '>0'
    
  - measure: orders_without_followups_count
    type: count
    filters:
      subsequent_orders_count: 0
      
  - measure: orders_with_followups_in_90_days_count
    type: count_distinct
    sql: ${user_id}
    filters:
      has_subsequent_within_90: 'Yes'
    
  - measure: orders_with_followups_in_180_days_count
    type: count_distinct
    sql: ${user_id}
    filters:
      has_subsequent_within_180: 'Yes'
    
  - measure: orders_with_followups_in_365_days_count
    type: count_distinct
    sql: ${user_id}
    filters:
      has_subsequent_within_365: 'Yes'
       
  - measure: repeat_rate_90
    type: number
    sql: 100.0 * ${orders_with_followups_in_90_days_count} / NULLIF(${users_count},0)
#     value_format: '%0.2f%'
    
  - measure: repeat_rate_180
    type: number
    sql: 100.0 * ${orders_with_followups_in_180_days_count} / NULLIF(${users_count},0)
#     value_format: '%0.2f%'
    
  - measure: repeat_rate_365
    type: number
    sql: 100.0 * ${orders_with_followups_in_365_days_count} / NULLIF(${users_count},0)
#     value_format: '%0.2f%'

  sets:
    detail:
      - order_id
      - user_id
      - created_at
      - subsequent_entries_number