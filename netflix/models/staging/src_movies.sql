WITH raw_movies AS (
    SELECT * FROM MOVIELENS.RAW.RAW_MOVIES
)

SELECT movieId AS movie_id, title, genre
FROM raw_movies