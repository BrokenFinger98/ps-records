select ch.item_id, ch.item_name, ch.rarity
from item_tree it
join item_info ch on it.item_id = ch.item_id
join item_info pa on it.parent_item_id = pa.item_id
where pa.rarity = 'RARE'
order by ch.item_id desc
