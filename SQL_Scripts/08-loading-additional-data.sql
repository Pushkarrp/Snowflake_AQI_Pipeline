

-- right most table
ALTER DYNAMIC TABLE dev_db.consumption_sch.agg_city_fact_day_level 
SET TARGET_LAG = '30 min';

ALTER DYNAMIC TABLE dev_db.consumption_sch.agg_city_fact_hour_level 
SET TARGET_LAG = 'DOWNSTREAM';

ALTER DYNAMIC TABLE dev_db.consumption_sch.air_quality_fact 
SET TARGET_LAG = 'DOWNSTREAM';

ALTER DYNAMIC TABLE dev_db.consumption_sch.date_dim 
SET TARGET_LAG = 'DOWNSTREAM';

ALTER DYNAMIC TABLE dev_db.consumption_sch.location_dim 
SET TARGET_LAG = 'DOWNSTREAM';

ALTER DYNAMIC TABLE dev_db.clean_sch.clean_flatten_aqi_dt
SET TARGET_LAG = 'DOWNSTREAM';

ALTER DYNAMIC TABLE dev_db.clean_sch.clean_aqi_dt
SET TARGET_LAG = 'DOWNSTREAM';

ALTER TASK  dev_db.stage_sch.copy_air_quality_data 
SET SCHEDULE = '60 minutes';


-- RESUME :
-- ALTER DYNAMIC TABLE dev_db.consumption_sch.agg_city_fact_day_level resume;
-- ALTER DYNAMIC TABLE dev_db.consumption_sch.agg_city_fact_day_level resume;
-- ALTER DYNAMIC TABLE dev_db.consumption_sch.agg_city_fact_hour_level resume;
-- ALTER DYNAMIC TABLE dev_db.consumption_sch.air_quality_fact resume;
-- ALTER DYNAMIC TABLE dev_db.consumption_sch.date_dim resume;
-- ALTER DYNAMIC TABLE dev_db.consumption_sch.location_dim resume;
-- ALTER DYNAMIC TABLE dev_db.clean_sch.clean_flatten_aqi_dt resume;
-- ALTER DYNAMIC TABLE dev_db.clean_sch.clean_aqi_dt resume;
-- alter task dev_db.stage_sch.copy_air_quality_data resume;


-- SUSPEND :
ALTER DYNAMIC TABLE dev_db.consumption_sch.agg_city_fact_day_level suspend;
ALTER DYNAMIC TABLE dev_db.consumption_sch.agg_city_fact_day_level suspend;
ALTER DYNAMIC TABLE dev_db.consumption_sch.agg_city_fact_hour_level suspend;
ALTER DYNAMIC TABLE dev_db.consumption_sch.air_quality_fact suspend;
ALTER DYNAMIC TABLE dev_db.consumption_sch.date_dim suspend;
ALTER DYNAMIC TABLE dev_db.consumption_sch.location_dim suspend;
ALTER DYNAMIC TABLE dev_db.clean_sch.clean_flatten_aqi_dt suspend;
ALTER DYNAMIC TABLE dev_db.clean_sch.clean_aqi_dt suspend;

alter task dev_db.stage_sch.copy_air_quality_data suspend;