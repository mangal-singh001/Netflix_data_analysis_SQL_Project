CREATE TABLE netflix_data(
	show_id	VARCHAR(5),
	type VARCHAR(10),
	title VARCHAR(250),
	director VARCHAR(550),
	"cast" VARCHAR(1100),
	country	VARCHAR(550),
	date_added	VARCHAR(55),
	release_year INT,
	rating	VARCHAR(50),
	duration VARCHAR(30),
	listed_in VARCHAR(250),
	description VARCHAR(600)
);


SELECT * FROM netflix_data;

SELECT COUNT(*) FROM netflix_data;