use project_movie_database;
select * from directors;
select * from movies;
-- 1.Can you get all data about movies? 
select * from movies;

-- 2.How do you get all data about directors?
select * from directors;

-- 3.Check how many movies are present in IMDB.
select * from movies;
select count(*) as Total_Movies from movies; 

-- 4.Find these 3 directors: James Cameron ; Luc Besson ; John Woo
select * from directors;
select * from directors where name in('James Cameron','Luc Besson','John Woo');

-- 5.Find all directors with name starting with S.
select * from directors;
select * from directors where name like 's%';

-- 6.Count female directors.
select * from directors;
select count(*) as Female_Directors from directors where gender=1;

-- 7.Find the name of the 10th first women directors?
select * from directors;
select name from directors where gender=1 order by name limit 1 offset 9;

-- 8.What are the 3 most popular movies?
select original_title,popularity from movies order by popularity desc limit 3;
select * from movies;

-- 9.What are the 3 most bankable movies?
select original_title,(revenue - budget) as profit from movies order by profit desc limit 3;
select * from movies;

-- 10.What is the most awarded average vote since the January 1st, 2000?
select title,vote_average from movies where release_date >= '2000-01-01' order by vote_average desc limit 1;
select * from movies;

-- 11.Which movie(s) were directed by Brenda Chapman?
select m.title from movies m join directors d on m.director_id = d.id where d.name = 'Brenda Chapman';
select * from directors;
select * from movies;

-- 12.Which director made the most movies?
select d.name, count(m.id) as Total_Movies from movies m join directors d on m.director_id=d.id group by d.name order by total_movies desc limit 1;
select * from directors;
select * from movies;

-- 13.Which director is the most bankable?
select d.name, sum(m.revenue - m.budget) as total_profit from movies m join  directors d on m.director_id = d.id group by d.name order by total_profit desc limit 1; 
select * from directors;
select * from movies;