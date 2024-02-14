with total_rw as (
	SELECT friendid, SUM(reward) as totalreward FROM tasks
	GROUP BY friendid
)
SELECT name, totalreward FROM total_rw INNER JOIN friend ON friend.id = total_rw.friendid
ORDER BY totalreward DESC LIMIT 5