with filtered as (
	SELECT weapon.name as w_name, trainerid FROM weapon
	LEFT JOIN friendequip on friendequip.weaponid = weapon.id
	WHERE friendequip.friendid is NULL
)
SELECT w_name as name, name as owner FROM filtered
INNER JOIN trainer on trainer.id = trainerid