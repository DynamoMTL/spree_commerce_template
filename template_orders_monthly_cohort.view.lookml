- view: template_orders_monthly_cohort
  derived_table:

    sql: |
      SELECT
        DATE_FORMAT(CONVERT_TZ(u.first_order,'UTC','America/Los_Angeles'),'%Y-%m') AS created_month
        , COUNT(*) as cohort_size
        
      FROM 
      -- ${user_order_facts.SQL_TABLE_NAME} u
        (select
          user_id
        , min(completed_at) as first_order
        FROM spree_orders
        WHERE locked_at > 0
          AND user_id > 0
        GROUP BY user_id) as u
      GROUP BY 1

    indexes: [created_month]
#     sql_trigger_value: SELECT current_date
    
  fields:
  - dimension: created_month
#     hidden: true      ## ignore
    primary_key: true

  - dimension: cohort_size
    hidden: true      ## ignore
    type: int
    
  - measure: total_cohort_size
    type: sum
    sql: ${cohort_size}
    
  - dimension: total_revenue_over_total_cohort_size
    type: number
    sql: ${orders.total_revenue} / ${total_cohort_size}
    value_format: "$%.2f"
    