- view: spree_return_items
  fields:

# DIMENSIONS - HIDDEN DIMENSIONS ARE AT THE END OF THE FILE

  - dimension: id
    primary_key: true
    hidden: true
    type: int
    sql: ${TABLE}.id

  - dimension: acceptance_status
    sql: ${TABLE}.acceptance_status

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: pre_tax_amount # what is the currency?
    type: number
    sql: ${TABLE}.pre_tax_amount

  - dimension: reception_status
    sql: ${TABLE}.reception_status


# ADDED DIMENSIONS

  - dimension: is_exchange
    type: yesno
    sql: ${exchange_variant_id} is not null
    
# DIMENSION FROM OTHER TABLES
    
  - dimension: exchanged_sku
    sql: | 
        (select ${variants.sku} from spree_variants as variants where ${exchange_variant_id}=${variants.id})
  
  - dimension: returned_sku
    sql: ${variants.sku}
    
  - dimension: product
    sql: ${products.name}

# MEASURES

  - measure: count
    type: count
    drill_fields: [id]

  - measure: total_pre_tax_amount
    type: sum
    sql: ${pre_tax_amount}

# HIDDEN DIMENSIONS

  - dimension: return_authorization_id
    hidden: true
    type: int
    sql: ${TABLE}.return_authorization_id
    
  - dimension: customer_return_id
    hidden: true
    type: int
    sql: ${TABLE}.customer_return_id
    
  - dimension: inventory_unit_id
    hidden: true
    type: int
    sql: ${TABLE}.inventory_unit_id

  - dimension: override_reimbursement_type_id
    hidden: true
    type: int
    sql: ${TABLE}.override_reimbursement_type_id
    
  - dimension: preferred_reimbursement_type_id
    hidden: true
    type: int
    sql: ${TABLE}.preferred_reimbursement_type_id
    
  - dimension: exchange_inventory_unit_id
    hidden: true
    type: int
    sql: ${TABLE}.exchange_inventory_unit_id
    
  - dimension: exchange_variant_id
    hidden: true
    type: int
    sql: ${TABLE}.exchange_variant_id
    
  - dimension: additional_tax_total
    hidden: true
    type: number
    sql: ${TABLE}.additional_tax_total
    
  - dimension: included_tax_total
    hidden: true
    type: number
    sql: ${TABLE}.included_tax_total
    
  - dimension: reimbursement_id
    hidden: true
    type: int
    sql: ${TABLE}.reimbursement_id
    
  - dimension: acceptance_status_errors
    hidden: true
    sql: ${TABLE}.acceptance_status_errors
    
    

