SELECT COUNT(*) FROM items i
JOIN item_flag_map im ON im.item_id = i.id
JOIN item_flags ifl ON im.item_flag_id = ifl.id
WHERE ifl.identifier = 'usable-in-battle';