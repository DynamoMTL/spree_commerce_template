#
# This is an exact replica of http://www.looker.com/blog/recommendations-are-easier-than-you-think
#

- view: template_user_product_affinity
  derived_table:
    sql_trigger_value: SELECT CURDATE()
    indexes: [product_a]
    sql: |
      SELECT
        product_a
        ,product_b
        ,joint_frequency
        ,tup1.product_frequency AS product_a_frequency
        ,tup2.product_frequency AS product_b_frequency
      FROM (
        SELECT 
          up1.product  AS product_a
          ,up2.product AS product_b
          ,count(*)    AS joint_frequency
        FROM (SELECT
                u.id    AS user_id
                ,li.id  AS inventory_item_id
                ,p.name AS product
              FROM spree_line_items li
              JOIN spree_orders     o  ON o.id          = li.order_id
              JOIN spree_variants   pv ON li.variant_id = pv.id
              JOIN spree_products   p  ON pv.product_id = p.id
              JOIN spree_users      u  ON u.id          = o.user_id
              GROUP BY user_id, product) AS up1
        JOIN (SELECT
                u.id    AS user_id
                ,li.id  AS inventory_item_id
                ,p.name AS product
              FROM spree_line_items li
              JOIN spree_orders     o  ON o.id          = li.order_id
              JOIN spree_variants   pv ON li.variant_id = pv.id
              JOIN spree_products   p  ON pv.product_id = p.id
              JOIN spree_users      u  ON u.id          = o.user_id
              GROUP BY user_id, product) AS up2
          ON up1.user_id = up2.user_id
        GROUP BY product_a, product_b
      ) AS prop
      JOIN (SELECT
              p.name AS product
              ,count(distinct p.name, u.id) AS product_frequency
            FROM spree_line_items li
            JOIN spree_orders   o  ON o.id          = li.order_id
            JOIN spree_variants pv ON li.variant_id = pv.id
            JOIN spree_products p  ON pv.product_id = p.id
            JOIN spree_users    u  ON u.id          = o.user_id
            GROUP BY p.name) AS tup1
        ON prop.product_a = tup1.product
      JOIN (SELECT
              p.name AS product
              ,count(distinct p.name, u.id) AS product_frequency
            FROM spree_line_items li
            JOIN spree_orders   o  ON o.id          = li.order_id
            JOIN spree_variants pv ON li.variant_id = pv.id
            JOIN spree_products p  ON pv.product_id = p.id
            JOIN spree_users    u  ON u.id          = o.user_id
            GROUP BY p.name) AS tup2
        ON prop.product_b = tup2.product
      WHERE product_a <> product_b
      GROUP BY product_a, product_b

  fields:
  - dimension: product_name_a
    sql: ${TABLE}.product_a

  - dimension: product_name_b
    sql: ${TABLE}.product_b

  - dimension: joint_frequency
    type: number
    sql: ${TABLE}.joint_frequency

  - dimension: product_a_frequency
    type: number
    sql: ${TABLE}.product_a_frequency

  - dimension: product_b_frequency
    type: number
    sql: ${TABLE}.product_b_frequency
    
  - measure: product_affinity
    type: number
    decimals: 1
    sql: ${joint_frequency}/(${product_a_frequency}+${product_b_frequency}-${joint_frequency})*100