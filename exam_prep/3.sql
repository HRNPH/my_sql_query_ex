WITH all_t as (
	SELECT friendequip.friendid, friend.name, weapon.attackpower, friend.attack, friend.hp, weapon.defense as w_d, friend.defense as f_d FROM friendequip
	INNER JOIN weapon ON weapon.id = friendequip.weaponid
	INNER JOIN friend ON friend.id = friendequip.friendid
)
SELECT name, hp, (attack + attackpower) as totalattack, (w_d + f_d) as totaldefense FROM all_t
ORDER BY name ASC