- view: template_line_items
  extends: spree_line_items
  fields:
    
  - measure: count_in_first_time_orders
    type: count
    filters:
      orders.is_first_order: yes
      
  - measure: percent_in_first_time_orders
    type: number
    value_format: '#.00\%'
    sql: 100.00 * ${count_in_first_time_orders} / NULLIF(${count},0)    
    
    