WITH raw_links AS (
    SELECT * FROM MOVIELENS.RAW.RAW_LINKS
)

SELECT movieId AS movie_id, imbdId AS imbd_id, tmbdId AS tmbd_id
FROM raw_links