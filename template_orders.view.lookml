- view: template_orders
  extends: spree_orders
  sql_table_name: spree_orders
  fields:

### Calculated dimensions ###

  - dimension: is_locked_order
    type: yesno
    sql: ${users.locked_date} > 0
    
  - dimension: revenue
    sql: ${item_total} - ${adjustment_total}
    
  - dimension: user_order_sequence_number
    type: number
    sql: |
      (
         SELECT COUNT(*)
         FROM spree_orders o
         WHERE o.id <= ${TABLE}.id
             AND o.user_id = ${TABLE}.user_id
       )
    
  - dimension: is_first_order
    type: yesno
    sql: ${user_order_sequence_number} = 1
    
  - dimension_group: completed
    type: time
    timeframes: [time, date, week, month, year]
    sql: ${TABLE}.completed_at  
    
  - dimension_group: created
    type: time
    timeframes: [time, date, week, month, year]
    sql: ${TABLE}.created_at  
    
  - dimension: created_week_index
    type: int
    sql: |
      cast(EXTRACT(week FROM ${TABLE}.created_at) as unsigned)    
    
  - dimension: created_quarter
    sql: CONCAT(${created_year},' ','Q',FLOOR(MONTH(${created_date})/4)+1)    
    
  - dimension: completed_quarter
    sql: CONCAT(${completed_year},' ','Q',FLOOR(MONTH(${completed_date})/4)+1)
    
  - dimension: completed_week_for_yoy
    type: date_week
    sql: ${completed_date_for_yoy}
    
  - dimension: completed_month_for_yoy
    type: date_month
    sql: ${completed_date_for_yoy}
        
  - dimension: completed_date_for_yoy
    hidden: true
    type: date_date
    # Find how many years in the past this was, then add that to the date
    sql: |
      CASE
        -- when the order is in the current YTD, just return it
        WHEN ${completed_date} BETWEEN DATE_FORMAT(CURDATE() ,'%Y-01-01') AND CURDATE()
          THEN ${completed_date}
        -- when the order is from before this day last year, add a year to it
        WHEN ${completed_date} BETWEEN (DATE_FORMAT(CURDATE() ,'%Y-01-01') - INTERVAL 1 YEAR) AND (CURDATE() - INTERVAL 1 YEAR)
          THEN ${completed_date} + INTERVAL 1 YEAR
        --  otherwise exclude
        ELSE
          NULL
      END    
    
  # MEASURES

  - measure: count
    type: count
    drill_fields: [id, users.id, users.first_name, users.last_name, users.username]
    
  # revenue gross - discounts (coupons + adjustments)
  - measure: total_revenue
    type: sum
    value_format: '$#,##0.00'
    sql: ${revenue}
  
  - measure: total_first_purchase_revenue
    type: sum
    value_format: '$#,##0.00'
    sql: ${revenue}
    filters:
      is_first_order: yes
      
  - measure: total_repeat_purchase_revenue
    type: sum
    value_format: '$#,##0.00'
    sql: ${revenue}
    filters:
      is_first_order: no
      
  - measure: percent_first_purchase_revenue
    type: number
    value_format: '#.00\%'
    sql: 100.00 * ${total_first_purchase_revenue} / ${total_revenue}
  
  - measure: percent_repeat_purchase_revenue
    type: number
    value_format: '#.00\%'
    sql: 100.00 * ${total_repeat_purchase_revenue} / ${total_revenue}

  - measure: average_order_value
    type: average
    value_format: '$#,##0.00'
    sql: ${revenue}
    
  - measure: users_count
    type: count_distinct
    sql: ${user_id}
    
  - measure: new_users_count
    type: count_distinct
    sql: ${user_id}
    filters:
     is_first_order: true  