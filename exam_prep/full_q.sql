-- 1 ---------------------------
SELECT * FROM Friend
WHERE "type" = 'Dragon';

-- 2 ---------------------------
SELECT * FROM trainer
WHERE money > (
	SELECT AVG(money) FROM trainer
)
-- 3 ---------------------------
WITH all_t as (
	SELECT friendequip.friendid,friend.name, weapon.attackpower,
	friend.attack, friend.hp, weapon.defense as w_d, friend.defense as f_d
	FROM friendequip
	INNER JOIN weapon ON weapon.id = friendequip.weaponid
	INNER JOIN friend ON friend.id = friendequip.friendid
)
SELECT name, hp, (attack + attackpower) as totalattack, (w_d + f_d) as totaldefense FROM all_t
ORDER BY name ASC
-- 4 ---------------------------
with filtered as (
	SELECT weapon.name as w_name, trainerid FROM weapon
	LEFT JOIN friendequip on friendequip.weaponid = weapon.id
	WHERE friendequip.friendid is NULL
)
SELECT w_name as name, name as owner FROM filtered
INNER JOIN trainer on trainer.id = trainerid
-- 5 ---------------------------
with total_rw as (
	SELECT friendid, SUM(reward) as totalreward FROM tasks
	GROUP BY friendid
)
SELECT name, totalreward FROM total_rw INNER JOIN friend ON friend.id = total_rw.friendid
ORDER BY totalreward DESC LIMIT 5
-- 6 ---------------------------
with filtered as (
	SELECT *, trainer.name as t_name, friend.name as f_name FROM trainer
	LEFT JOIN friend on friend.trainerid = trainer.id
)
SELECT t_name, COUNT(f_name), ((SUM(hp) + sum(attack) + sum(defense))/COUNT(f_name))
as avgstats FROM filtered GROUP BY filtered.t_name ORDER BY avgstats DESC
-- 7 ---------------------------
SELECT name, hp from friend WHERE friend.hp in (
	SELECT DISTINCT hp from friend ORDER BY friend.hp DESC LIMIT 5
) ORDER BY friend.hp DESC
-- 8 ---------------------------
SELECT type, COUNT(friend.name)as typecount from friend
where friend.name LIKE '%i%'
GROUP BY type ORDER BY typecount DESC