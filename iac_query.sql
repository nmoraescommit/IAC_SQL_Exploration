-- Which state implemented the greatest percentage of recommendations made?
-- Top 10 states by implementation percentage with more details

WITH state_counts AS (
    SELECT
        a.state,
        COUNT(CASE WHEN r.impstatus = 'I' THEN 1 END) AS implemented, -- if the condition is true return one, then end the boolean, add to implemented
        COUNT(CASE WHEN r.impstatus IN ('I', 'N') THEN 1 END) AS total_relevant, -- if the condition is true return one, then end the boolean, add to total
        COUNT(*) AS total_recommendations -- sanity check! count number of recommendations a state has had overall - we'll create a vis of states with the most recommendations overall
    FROM rec r
    INNER JOIN assess a ON r.id = a.id
    WHERE a.state IS NOT NULL
    GROUP BY a.state
)
SELECT
    state,
    implemented,
    total_relevant,
    total_recommendations,
    ROUND((implemented * 100.0 / NULLIF(total_relevant, 0)), 2) AS impl_percentage
FROM state_counts
ORDER BY impl_percentage DESC
LIMIT 10;

-- Which SIC were the most assessed - and what are there desciptions?
WITH sic_counts AS (
    SELECT 
        CAST(sic AS INTEGER)::VARCHAR AS sic_int, -- to match assess and crosswalk format
        COUNT(*) AS assessment_count
    FROM assess
    WHERE sic IS NOT NULL
    GROUP BY sic_int
),
unique_descriptions AS ( 
    SELECT DISTINCT 
        sic,
        sic_description
    FROM crosswalk
)
SELECT DISTINCT
    c.sic_int AS sic_code,
    u.sic_description,
    c.assessment_count
FROM sic_counts c
LEFT JOIN unique_descriptions u ON c.sic_int = u.sic
ORDER BY c.assessment_count DESC
LIMIT 10;