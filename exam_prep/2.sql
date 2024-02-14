SELECT * FROM trainer
WHERE money > (
	SELECT AVG(money) FROM trainer
)