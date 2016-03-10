- view: template_products
  extends: spree_products
  sql_table_name: spree_products
  
  fields:
  
  - filter: product_name
    suggest_dimension: name
  
  - dimension: product_comparison
    description: 'Compare a selected product vs. all other products'
    sql: |
        CASE
          WHEN  {% condition product_name %} name {% endcondition %}
          THEN CONCAT('(1) ', ${products.name})
          ELSE '(2) Rest of Population'
        END
  
  
