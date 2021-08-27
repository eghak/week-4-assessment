-- Artist Table

-- Select 10 artists in reverse alphabetical order.
select * from artist
order by name desc
limit 10;

-- Select all artists that start with the word ‘Black’.
SELECT * FROM artist WHERE name LIKE 'Black%';

-- Select all artists that contain the word ‘Black’.
SELECT * FROM artist WHERE name LIKE '%Black%';



-- Employee Table

-- Find the birthdate for the youngest employee.
SELECT MAX(birth_date) FROM employee;

-- Find the birthdate for the oldest employee.
SELECT MIN(birth_date) FROM employee;



-- Invoice Table

-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT * FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');
-- Get the average total of the orders.
SELECT AVG(total) from invoice;



-- More Join Queries

-- Get all playlist_track track_ids where the playlist name is Music.
select pt.track_id, p.name
from playlist_track pt
join playlist p
on pt.playlist_id = p.playlist_id
where p.name = 'Music';

-- Get all track names for playlist_id 5.
select t.name, pt.playlist_id
from track t
join playlist_track pt
on t.track_id = pt.track_id
where playlist_id = 5;

-- Get all track names and the playlist name that they’re on ( 2 joins ).
select t.name as track_name, p.name as playlist_name
from track t
join playlist_track on t.track_id = playlist_track.track_id
join playlist p on playlist_track.playlist_id = p.playlist_id

-- Get all track names and album titles that are the genre Alternative & Punk ( 2 joins ).
select track.name, album.title, genre.name
from track
join album on track.album_id = album.album_id
join genre on genre.genre_id = album.album_id
where genre.name = 'Alternative & Punk';