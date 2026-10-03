select ii2.item_id, ii2.item_name, ii2.rarity
from item_tree it
join item_info ii1 on it.item_id = ii1.item_id
join item_info ii2 on it.parent_item_id = ii2.item_id
where ii1.rarity = 'RARE'
order by ii2.item_id desc
