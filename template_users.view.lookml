- view: template_users
  extends: spree_users
  sql_table_name: spree_users
  fields:

  - measure: avg_sign_in_count
    type: avg
    decimals: 4
    sql: ${sign_in_count}