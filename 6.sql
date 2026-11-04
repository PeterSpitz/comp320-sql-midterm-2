SELECT COUNT(*) FROM items i
WHERE i.id IN (SELECT i1.id FROM items i1
               JOIN item_flag_map im ON im.item_id = i1.id
               JOIN item_flags ifl ON im.item_flag_id = ifl.id
               WHERE ifl.identifier = 'usable-in-battle')
AND i.id IN (SELECT i2.id FROM items i2
            JOIN item_categories ic ON i2.category_id = ic.id
            JOIN item_pockets ip ON ic.pocket_id = ip.id
            WHERE ic.identifier = 'medicine'
            OR ip.identifier = 'medicine');