SELECT W.id, P.age, min_cost,W.power
FROM Wands W
INNER JOIN (SELECT code, power, MIN(coins_needed) as min_cost FROM Wands W
            GROUP BY code, power) W_MIN ON W.code = W_MIN.code AND W.power = W_MIN.power
INNER JOIN Wands_Property P ON W.code = P.code
WHERE P.Is_Evil = 0 AND W.coins_needed = W_MIN.min_cost
ORDER BY W.Power DESC, P.Age DESC
