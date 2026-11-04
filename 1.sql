SELECT i.identifier FROM items AS i
JOIN item_categories AS ic ON i.category_id = ic.id
WHERE ic.identifier = 'stat-boosts';