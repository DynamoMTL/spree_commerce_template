- view: spree_return_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: acceptance_status
    type: string
    sql: ${TABLE}.acceptance_status

  - dimension: acceptance_status_errors
    type: string
    sql: ${TABLE}.acceptance_status_errors

  - dimension: additional_tax_total
    type: number
    sql: ${TABLE}.additional_tax_total

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: customer_return_id
    type: int
    sql: ${TABLE}.customer_return_id

  - dimension: exchange_inventory_unit_id
    type: int
    sql: ${TABLE}.exchange_inventory_unit_id

  - dimension: exchange_variant_id
    type: int
    sql: ${TABLE}.exchange_variant_id

  - dimension: included_tax_total
    type: number
    sql: ${TABLE}.included_tax_total

  - dimension: inventory_unit_id
    type: int
    sql: ${TABLE}.inventory_unit_id

  - dimension: override_reimbursement_type_id
    type: int
    sql: ${TABLE}.override_reimbursement_type_id

  - dimension: pre_tax_amount
    type: number
    sql: ${TABLE}.pre_tax_amount

  - dimension: preferred_reimbursement_type_id
    type: int
    sql: ${TABLE}.preferred_reimbursement_type_id

  - dimension: reception_status
    type: string
    sql: ${TABLE}.reception_status

  - dimension: reimbursement_id
    type: int
    sql: ${TABLE}.reimbursement_id

  - dimension: return_authorization_id
    type: int
    sql: ${TABLE}.return_authorization_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

