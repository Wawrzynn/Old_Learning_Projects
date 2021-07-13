SELECT DISTINCT title FROM movies JOIN stars ON movies.id = stars.movie_id JOIN ratings ON 
ratings.movie_id = stars.movie_id JOIN people ON stars.person_id = people.id
WHERE name = 'Chadwick Boseman' ORDER BY rating DESC LIMIT 5;




