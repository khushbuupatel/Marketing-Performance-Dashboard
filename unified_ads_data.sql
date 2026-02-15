USE DATABASE MARKETING_DB;

-- create a unified table to consolidate ad data from multiple sources
CREATE OR REPLACE TABLE unified_ads (
    date DATE,
    source STRING,
    campaign_id STRING,
    campaign_name STRING,
    ad_group_id STRING,
    ad_group_name STRING,
    impressions NUMBER(38,0),
    clicks NUMBER(38,0),
    spend NUMBER(38,2),
    conversions NUMBER(38,0),
    video_views NUMBER(38,0),
    engagements NUMBER(38,0),
    engagement_rate NUMBER(38,6)
);

-- insert data from multiple sources
INSERT INTO unified_ads

SELECT
    date,
    'facebook' AS source,
    campaign_id,
    campaign_name,
    ad_set_id AS ad_group_id,
    ad_set_name AS ad_group_name,
    impressions,
    clicks,
    spend,
    conversions,
    video_views,
    (engagement_rate * impressions) AS engagements,
    engagement_rate AS engagement_rate
FROM marketing_db.public.facebook_ads
    
UNION ALL
    
SELECT
    date,
    'tiktok' AS source,
    campaign_id,
    campaign_name,
    adgroup_id AS ad_group_id,
    adgroup_name AS ad_group_name,
    impressions,
    clicks,
    cost AS spend,
    conversions,
    video_views,
    (likes + shares + comments) AS engagements,
    CASE WHEN impressions > 0 THEN (likes + shares + comments) * 1.0 / impressions ELSE 0 END AS engagement_rate
FROM marketing_db.public.tiktok_ads
    
UNION ALL
    
SELECT
    date,
    'google' AS source,
    campaign_id,    
    campaign_name,
    ad_group_id,
    ad_group_name,
    impressions,
    clicks,
    cost AS spend,
    conversions,
    NULL as video_views,
    NULL AS engagements,
    NULL AS engagement_rate
FROM marketing_db.public.google_ads;
