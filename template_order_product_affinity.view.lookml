- view: template_order_product_affinity
  derived_table: 
    indexes: [name_a]
    sql: |
      SELECT
      name_a
      , name_b
      , joint_frequency
      , toc1.name_frequency as name_a_frequency
      , toc2.name_frequency as name_b_frequency
      FROM (
        SELECT oc1.name as name_a
        , oc2.name as name_b
        , count(*) as joint_frequency
        FROM  (SELECT o.id as order_id
                    , oi.variant_id as item_id
                    , p.name as name
                    FROM spree_line_items oi
                    JOIN spree_orders o ON o.id = oi.order_id
                    JOIN spree_variants ii ON oi.variant_id = ii.id
                    JOIN spree_products p ON ii.product_id = p.id
                    GROUP BY order_id, name
                    ) as oc1
        JOIN  (SELECT o.id as order_id
                    , oi.variant_id as item_id
                    , p.name as name
                    FROM spree_line_items oi
                    JOIN spree_orders o ON o.id = oi.order_id
                    JOIN spree_variants ii ON oi.variant_id = ii.id
                    JOIN spree_products p ON ii.product_id = p.id
                    GROUP BY order_id, name
                    ) AS oc2 ON oc1.order_id = oc2.order_id
        GROUP BY name_a, name_b 
      ) as prop
      JOIN (SELECT p.name as name
            , count(distinct p.name, o.id) as name_frequency
            FROM spree_line_items oi
            JOIN spree_orders o ON o.id = oi.order_id
            JOIN spree_variants ii ON oi.variant_id = ii.id
            JOIN spree_products p ON ii.product_id = p.id
            GROUP BY p.name
            ) AS toc1 ON prop.name_a = toc1.name
      JOIN (SELECT p.name as name
            , count(distinct p.name, o.id) as name_frequency
            FROM spree_line_items oi
            JOIN spree_orders o ON o.id = oi.order_id
            JOIN spree_variants ii ON oi.variant_id = ii.id
            JOIN spree_products p ON ii.product_id = p.id
            GROUP BY p.name
            ) AS toc2 ON prop.name_b = toc2.name
      WHERE
        name_a <> name_b

  fields:
  - dimension: product_name_a
    sql: ${TABLE}.name_a

  - dimension: product_name_b
    sql: ${TABLE}.name_b

  - dimension: joint_frequency
    type: number
    sql: ${TABLE}.joint_frequency

  - dimension: product_a_frequency
    type: number
    sql: ${TABLE}.name_a_frequency

  - dimension: product_b_frequency
    type: number
    sql: ${TABLE}.name_b_frequency
    
  - measure: product_affinity
    type: number
    decimals: 1
    sql: ${joint_frequency}/(${product_a_frequency}+${product_b_frequency}-${joint_frequency})*100