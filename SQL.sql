SELECT 
  COUNT(*) AS total_jobs,
  SUM(CASE WHEN status = 'failed' THEN 1 ELSE 0 END) AS failed_jobs,
  ROUND(
    SUM(CASE WHEN auto_resolved = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
  ) AS auto_resolution_rate
FROM pipeline_jobs;

