SELECT ip.identifier, COUNT(*) FROM item_pockets ip
JOIN item_categories ic ON ic.pocket_id = ip.id
GROUP BY ip.identifier
ORDER BY COUNT(*) ASC;