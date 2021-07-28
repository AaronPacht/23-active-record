-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.

    select title from albums where albums.artist_id=(select id from artists where name='Queen');

-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

    select count(*) from tracks where tracks.media_type_id=(select id from media_types where name='Protected MPEG-4 video file');

-- 3) Find the least expensive track that has the genre "Electronica/Dance".

    select name from tracks where tracks.unit_price=(select min(unit_price) from tracks where tracks.genre_id=(select id from genres where name='Electronica/Dance')) limit 1;

-- 4) Find all the artists whose names start with A.

    select name from artists where name like 'A%';

-- 5) Find all the tracks that belong to playlist 1.

    select name from tracks where tracks.id in (select track_id from playlists_tracks where playlists_tracks.playlist_id=(select playlists.id from playlists limit 1));