WITH ratings_summary AS (
    SELECT
        movie_id,
        AVG(rating) AS avg_rating,
        COUNT(*) AS total_ratings
    FROM {{ref('fct_ratings')}}
    GROUP BY movie_id
    HAVING COUNT(*) > 100
)

SELECT 
    m.movie_title,
    rs.avg_rating,
    rs.total_ratings
FROM ratings_summary rs JOIN {{ref('dim_movies')}} m USING(movie_id)
ORDER BY rs.avg_rating DESC
LIMIT 20;