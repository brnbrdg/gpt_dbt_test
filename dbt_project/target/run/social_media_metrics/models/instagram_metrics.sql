
  create or replace   view brainbridge_dwh.social_media.instagram_metrics
  
   as (
    with instagram_media as (
    select
        date_trunc('day', created_time) as creation_date,
        'instagram' as platform,
        count(id) as media_produced
    from brainbridge_dwh.INSTAGRAM_BUSINESS.media_history
    group by creation_date
)
select * from instagram_media
  );

