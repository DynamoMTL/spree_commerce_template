- connection: shop-smartthings-com

# - scoping: true           # for backward compatibility
# - include: "spree_*.view.lookml"       # include all raw views
# - include: "template_*.view.lookml"
# - include: "*.dashboard.lookml"  # include all dashboards in this project


- explore: template_line_items
  extension: required
  label: 'Orders & Line Items'
  conditionally_filter:
    unless: [orders.date_fields*, line_items.date_fields*, orders_monthly_cohort.created_month, subsequent_order_facts.date_fields*]
  always_filter:
#     If users need to compare locked vs non-locked orders, set this to "is any value" in explore
   orders.state: 'complete'

  joins:
    - join: orders
      from: template_orders
      foreign_key: order_id
      
    - join: users
      from: template_users
      foreign_key: orders.user_id
      
    - join: user_order_facts
      from: template_user_order_facts
      sql_on: ${orders.user_id} = ${user_order_facts.user_id}
      relationship: many_to_one      
      
    - join: orders_monthly_cohort
      from: template_orders_monthly_cohort
      sql_on: ${orders_monthly_cohort.created_month} = ${user_order_facts.first_order_month}
      relationship: many_to_one      
      
    - join: subsequent_order_facts
      from: template_subsequent_order_facts
      foreign_key: orders.id
      relationship: many_to_one
      
    - join: product_variants
      from: template_product_variants
      foreign_key: variant_id
      
    - join: products
      from: template_products
      foreign_key: product_variants.product_id
    
    - join: reimbursements
      from: spree_reimbursements
      sql_on: ${reimbursements.order_id} = ${orders.id}
      relationship: many_to_one
    
    # can join payment info here too

- explore: template_users
  extension: required
  joins:
  - join: orders
    from: template_orders
    sql_on: ${orders.user_id} = ${users.id}
    relationship: one_to_many
  
  - join: user_order_facts
    from: template_user_order_facts
    foreign_key: id
    relationship: one_to_one
    
    
- explore: template_products
  extension: required
  label: 'Product Catalog'

# - explore: template_user_product_affinity
#   extension: required
#   label: 'Product Affinity - by Users'

- explore: template_order_product_affinity
  extension: required

    

