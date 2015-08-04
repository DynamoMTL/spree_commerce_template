- connection: sample_connection_name 

- include: "template.model.lookml"

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

- explore: user_product_affinity
  view: user_product_affinity
  from: template_user_product_affinity
  extends: template_user_product_affinity

