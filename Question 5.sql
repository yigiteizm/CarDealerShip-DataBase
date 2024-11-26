SELECT DISTINCT d.*
FROM Dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN Vehicles v ON i.VIN = v.VIN
WHERE v.Make = 'Ford' AND v.Model = 'Mustang' AND v.Color = 'Red';
