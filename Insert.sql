INSERT INTO performers (id, performer, nickname)
VALUES (1, 'performer_1', 'nickname_1'), (2, 'performer_2', 'nickname_2'), (3, 'performer_3', 'nickname_3'), (4, 'performer_4', 'nickname_4'), (5, 'performer_5', 'nickname_5'), (6, 'performer_6', 'nickname_6'), (7, 'performer_7', 'nickname_7'), (8, 'performer_8', 'nickname_8');

INSERT INTO genres (id, name_genre)
VALUES (1, 'genre_1'), (2, 'genre_2'), (3, 'genre_3'), (4, 'genre_4'), (5, 'genre_5');

INSERT INTO albums (id, name_album, year_of_release_album)
VALUES (1, 'album_1', 2011), (2, 'album_2', 2012), (3, 'album_3', 2013), (4, 'album_4', 2014), (5, 'album_5', 2015), (6, 'album_6', 2018), (7, 'album_7', 2019), (8, 'album_8', 2020);

INSERT INTO tracks (id, name_track, duration, album_id)
VALUES (1, 'my', 2.50, 1), (2, 'track_2', 2.00, 2), (3, 'track_3', 3.10, 3), (4, 'track_4', 3.50, 4), (5, 'track_5', 2.40, 5), (6, 'track_6', 3.50, 6), (7, 'track_7', 3.20, 7), (8, 'track_8', 2.50, 8), (9, 'track_9', 3.40, 1), (10, 'track_10', 3.50, 2), (11, 'track_11', 4.10, 3), (12, 'track_12', 4.15, 4), (13, 'track_13', 2.35, 5), (14, 'track_14', 5.10, 6), (15, 'track_15', 3.45);

INSERT INTO compilations (id, name_compilation, year_of_release_compilation)
VALUES (1, 'compilation_1', 2011), (2, 'compilation_2', 2012), (3, 'compilation_3', 2013), (4, 'compilation_4', 2014), (5, 'compilation_5', 2015), (6, 'compilation_6', 2018), (7, 'compilation_7', 2019), (8, 'compilation_8', 2020)

INSERT into genre_performer (id, genres_id, performer_id)
values (1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5), (6, 1, 6), (7, 2, 7), (8, 3, 8), (9, 2, 1);

INSERT into performers_albums (id, performer_id, album_id)
values (1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5), (6, 6, 6), (7, 7, 7), (8, 8, 8);

insert into composition_compilation (id, compilation_id, track_id)
values (1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5), (6, 6, 6), (7, 7, 7), (8, 8, 8), (9, 1, 9), (10, 2, 10), (11, 3, 11), (12, 4, 12), (13, 5, 13), (14, 6, 14)