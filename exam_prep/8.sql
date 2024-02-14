SELECT type, COUNT(friend.name)as typecount from friend
where friend.name LIKE '%i%'
GROUP BY type ORDER BY typecount DESC