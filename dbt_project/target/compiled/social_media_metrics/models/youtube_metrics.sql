with youtube_videos as (
    select
        date_trunc('day', snippet_published_at) as creation_date,
        'youtube' as platform,
        count(id) as media_produced
    from brainbridge_dwh.YOUTUBE_ANALYTICS.video
    group by creation_date
)
select * from youtube_videos