SELECT d.* 
FROM Dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.VIN = '1FAFP4041XF012345';
