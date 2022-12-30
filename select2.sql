SELECT name_genre, COUNT(performer) FROM performers
JOIN genre_performer ON performers.id = genre_performer.performer_id
JOIN genres ON genre_performer.genres_id = genres.id
GROUP BY name_genre;

SELECT year_of_release_album,COUNT(name_track) FROM albums a
JOIN tracks t  ON a.id = t.album_id
WHERE a.year_of_release_album  >= 2019 AND a.year_of_release_album <= 2020
GROUP BY year_of_release_album;

SELECT name_album, AVG(duration) FROM albums a
JOIN tracks t  ON a.id = t.album_id
GROUP BY name_album;

SELECT performer, year_of_release_album FROM albums a
JOIN performers_albums pa ON a.id = pa.album_id
JOIN performers p  ON pa.performer_id  = p.id
WHERE a.year_of_release_album < 2020;

SELECT name_compilation FROM compilations c
JOIN composition_compilation cc  ON c.id = cc.compilation_id
JOIN tracks t  ON cc.track_id = t.id
JOIN albums a  ON t.album_id = a.id
JOIN performers_albums pa  ON a.id = pa.album_id
JOIN performers p ON pa.performer_id  = p.id
WHERE p.performer LIKE '%performer_3%';

SELECT name_album FROM albums a
JOIN performers_albums pa  ON a.id = pa.album_id
JOIN performers p ON pa.performer_id  = p.id
JOIN genre_performer gp  ON p.id = gp.performer_id
GROUP BY p.performer, a.name_album
HAVING count(gp.genres_id) > 1;

SELECT name_track FROM tracks t
LEFT JOIN composition_compilation cc ON t.id = cc.track_id
WHERE cc.track_id IS NULL;

SELECT p.performer, t.duration FROM performers p 
JOIN performers_albums pa ON p.id = pa.performer_id 
JOIN albums a ON pa.album_id = a.id
JOIN tracks t ON a.id = t.album_id
WHERE t.duration IN (SELECT min(duration) FROM tracks);


SELECT a.name_album, COUNT(t.id) FROM albums a
JOIN tracks t  ON a.id = t.album_id
GROUP BY a.name_album 
HAVING COUNT(t.id) in (SELECT COUNT (t.id) FROM albums a JOIN tracks t  ON a.id = t.album_id GROUP BY a.name_album ORDER BY count(t.id) LIMIT 1)
