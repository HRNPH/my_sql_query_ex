with filtered as (
	SELECT *, trainer.name as t_name, friend.name as f_name FROM trainer
	LEFT JOIN friend on friend.trainerid = trainer.id
)
-- SELECT * FROM filtered
SELECT t_name, COUNT(f_name), ((SUM(hp) + sum(attack) + sum(defense))/COUNT(f_name)) as avgstats FROM filtered GROUP BY filtered.t_name
ORDER BY avgstats DESC