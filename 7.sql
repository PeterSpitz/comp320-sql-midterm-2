SELECT i.identifier AS 'item name', ic.identifier AS 'item category',
ip.identifier AS 'pocket', ft.flavor_text FROM items i
JOIN item_categories ic ON ic.id = i.category_id
JOIN item_pockets ip ON ip.id = ic.pocket_id
JOIN item_fling_effects ife ON ife.id = i.fling_effect_id
JOIN item_flavor_text ft ON i.id = ft.item_id
JOIN languages l ON l.id = ft.language_id

WHERE l.identifier = 'en'
AND ife.identifier IN ('burn', 'paralyze')

GROUP BY i.identifier
ORDER BY i.identifier DESC;