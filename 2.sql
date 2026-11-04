SELECT i.identifier, i.cost FROM items AS i
JOIN item_categories AS ic ON i.category_id = ic.id
WHERE ic.identifier LIKE '%balls' AND i.cost > 0
ORDER BY i.cost DESC;