select pr.id, count(ch.parent_id) as child_count
from ECOLI_DATA pr
left join ECOLI_DATA ch on pr.id = ch.parent_id
group by pr.id
