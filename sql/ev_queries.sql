-- Total EV Vehicles
SELECT COUNT(*) AS total_ev
FROM ev_data;

-- EV Adoption by State
SELECT State,
       COUNT(*) AS total_ev
FROM ev_data
GROUP BY State
ORDER BY total_ev DESC;

-- Top EV Brands
SELECT Make,
       COUNT(*) AS vehicles
FROM ev_data
GROUP BY Make
ORDER BY vehicles DESC
LIMIT 10;

-- EV Type Distribution
SELECT Electric_Vehicle_Type,
       COUNT(*) AS vehicles
FROM ev_data
GROUP BY Electric_Vehicle_Type;

-- Ev growth by model year
SELECT Model_Year,
       COUNT(*) AS vehicles
FROM ev_data
GROUP BY Model_Year
ORDER BY Model_Year;

-- Avg electric range by brand
SELECT Make,
       AVG(Electric_Range) AS avg_range
FROM ev_data
GROUP BY Make
ORDER BY avg_range DESC;

-- Ev adoption by city
SELECT City,
       COUNT(*) AS total_ev
FROM ev_data
GROUP BY City
ORDER BY total_ev DESC
LIMIT 10;

-- Ev count by utility provider
SELECT Electric_Utility,
       COUNT(*) AS vehicles
FROM ev_data
GROUP BY Electric_Utility
ORDER BY vehicles DESC;


-- Ev distribution by country
SELECT County,
       COUNT(*) AS vehicles
FROM ev_data
GROUP BY County
ORDER BY vehicles DESC;

-- Ev Adoption trend for recent years
SELECT Model_Year,
       COUNT(*) AS vehicles
FROM ev_data
WHERE Model_Year >= 2015
GROUP BY Model_Year
ORDER BY Model_Year;

-- Battery electric v/s plug in hybrids
SELECT Electric_Vehicle_Type,
       COUNT(*) AS vehicle_count
FROM ev_data
GROUP BY Electric_Vehicle_Type;

-- Vehicle eligible for clean fuel program
SELECT Clean_Alternative_Fuel_Vehicle_CAFV_Eligibility,
       COUNT(*) AS vehicles
FROM ev_data
GROUP BY Clean_Alternative_Fuel_Vehicle_CAFV_Eligibility;

-- Ev adoption by brand over time
SELECT Model_Year,
       Make,
       COUNT(*) AS vehicles
FROM ev_data
GROUP BY Model_Year, Make
ORDER BY Model_Year;

-- 1. Total EV vehicles
-- 2. EV adoption by state
-- 3. EV adoption by city
-- 4. EV distribution by county
-- 5. Top EV manufacturers
-- 6. Top EV models
-- 7. EV type distribution
-- 8. EV adoption by model year
-- 9. EV adoption trend (recent years)
-- 10. Average electric range by brand
-- 11. EV count by utility provider
-- 12. Clean fuel eligibility analysis
-- 13. EV adoption by brand over time