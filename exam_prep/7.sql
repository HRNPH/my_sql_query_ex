SELECT name, hp from friend WHERE friend.hp in (
	SELECT DISTINCT hp from friend ORDER BY friend.hp DESC LIMIT 5
) ORDER BY friend.hp DESC