/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
SELECT staff.first_name, staff.last_name, SUM(payment.amount) AS sum 
FROM payment
INNER JOIN staff ON staff.staff_id = payment.staff_id
WHERE payment.payment_date >= '2020-01-01' AND payment.payment_date < '2020-02-01'
GROUP BY staff.first_name, staff.last_name;
