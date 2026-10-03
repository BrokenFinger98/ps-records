SELECT id, email, first_name, last_name
FROM developers
WHERE skill_code & (select code from skillcodes where name = 'Python') = (select code from skillcodes where name = 'Python') 
OR skill_code & (select code from skillcodes where name = 'C#') = (select code from skillcodes where name = 'C#')
ORDER BY id
