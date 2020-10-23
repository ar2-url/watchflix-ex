//users               payments                     watch_history


    id
    first_name
    last_name
    email
    password
                      //
						id
						user_id
						amount
						status
						pay_date
													//
													
													id
													user_id
													watch_date
													watch_duration_in_minutes
													
													// the most important select 
													select first_name, COUNT(*) AS 'count'
													from users
													group by first_name


//i drugi

SELECT pay_date AS 'day', 
SUM(amount) AS 'total'
FROM payments
WHERE status = 'paid'
GROUP BY day
ORDER BY total DESC;

//lub w wersji poczatkowej

SELECT pay_date, SUM(amount)
FROM payments
WHERE status = 'paid'
GROUP BY pay_date
ORDER BY SUM(amount) DESC;