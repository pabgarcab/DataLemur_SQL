-- Your team at JPMorgan Chase is soon launching a new credit card, and to gain some context, you are analyzing how many credit cards were issued each month
-- Write a query that outputs the name of each credit card and the difference in issued amount between the month with the most cards issued, and the least cards issued. Order the results according to the biggest difference.

SELECT card_name, max(issued_amount) - min(issued_amount) as difference
FROM monthly_cards_issued
group by card_name
order by difference DESC;
