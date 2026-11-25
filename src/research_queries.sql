-- Descriptive queries only; use the private database in read-only mode.

-- Evidence coverage
SELECT project_name, COUNT(*) AS observations FROM mine_observations JOIN projects USING(project_id) GROUP BY project_name ORDER BY observations DESC;

-- Review status
SELECT analysis_gate, COUNT(*) AS records FROM mine_observations GROUP BY analysis_gate;

-- Production (available observations only)
SELECT year, contained_li_tonnes FROM national_production WHERE contained_li_tonnes IS NOT NULL ORDER BY year;

-- Trade classification coverage
SELECT classification, COUNT(*) AS records FROM monthly_trade GROUP BY classification;

-- Compliance evidence status
SELECT status, COUNT(*) AS records FROM mine_compliance GROUP BY status;

-- Discourse coding coverage
SELECT primary_code, COUNT(*) AS excerpts FROM discourse GROUP BY primary_code ORDER BY excerpts DESC;

-- Unresolved source count
SELECT COUNT(*) AS unresolved FROM unresolved_sources;
