with postal_gu AS (
	with guhave_cust AS (
		WITH o_sum as (
			SELECT order_id, SUM(ordered_quantity * standard_price) AS sum_money
			FROM (
					SELECT * FROM order_line
					INNER JOIN product ON order_line.product_id = product.product_id
			) GROUP BY order_id	
		)
		SELECT * FROM o_sum INNER JOIN ordert ON ordert.order_id = o_sum.order_id
	)
	SELECT * FROM guhave_cust INNER JOIN customer ON customer.customer_id = guhave_cust.customer_id
)

SELECT postal_code, sum(sum_money) as total_payment
FROM (SELECT * FROM postal_gu)
GROUP BY postal_code