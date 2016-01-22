- connection: shop-smartthings-com

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project
- include: "spree_commerce_template.model.lookml"

- explore: users
  view: users
  from: template_users
  extends: template_users

- explore: line_items
  view: line_items
  from: template_line_items
  extends: template_line_items

- explore: products
  view: products
  from: template_products
  extends: template_products
  
- explore: order_product_affinity
  view: order_product_affinity
  from: template_order_product_affinity
  extends: template_order_product_affinity
  
  
- explore: spree_return_authorizations
  label: "Returns"
  joins:
      - join: orders
        from: spree_orders
        foreign_key: order_id
        
      - join: users
        from: spree_users
        foreign_key: orders.user_id
        
      - join: return_items
        from: spree_return_items
        sql_on: ${return_items.return_authorization_id}=${spree_return_authorizations.id}
        relationship: one_to_many
        
      - join: line_items
        from: spree_line_items
        sql_on: ${line_items.order_id}=${orders.id}
        relationship: one_to_many
        
      - join: inventory_units
        from: spree_inventory_units
        foreign_key: return_items.inventory_unit_id
        fields: []
        
      - join: variants
        from: spree_variants
        foreign_key: inventory_units.variant_id
        fields: []
        
      - join: products
        from: spree_products
        foreign_key: variants.product_id
        
      - join: return_authorization_reasons
        from: spree_return_authorization_reasons
        foreign_key: return_authorization_reason_id
        fields: []  
# 
# - explore: user_product_affinity
#   view: user_product_affinity
#   from: template_user_product_affinity
#   extends: template_user_product_affinity

