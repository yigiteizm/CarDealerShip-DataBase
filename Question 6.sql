SELECT s.*
FROM Sales_contracts s
JOIN inventory i ON s.VIN = i.VIN
WHERE i.dealership_id = 2
  AND s.sale_date BETWEEN '2023-05-01' AND '2023-09-30';
