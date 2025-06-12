WITH src_movies AS (
    SELECT * FROM {{ref('src_movies')}}
)

SELECT 
    movie_id, 
    INITCAP(TRIM(title)) AS movie_title,
    SPLIT(genre, '|') AS genre_array,
    genre
FROM src_movies