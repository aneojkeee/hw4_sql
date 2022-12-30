create table if not exists performers (
	id serial primary key,
	performer text,
	nickname text 
);
create table if not exists albums (
	id serial primary key,
	name_album text,
	year_of_release_album integer
);
create table if not exists tracks (
	id serial primary key,
	name_track text,
	duration integer not null,
	album_id  integer references albums(id)
);
create table if not exists genres (
	id serial primary key,
	name_genre text
);
create table if not exists compilations (
	id serial primary key,
	name_compilation text,
	year_of_release_compilation integer
);
create table if not exists genre_performer (
	id serial primary key,
	genres_id integer not null references genres(id),
	performer_id integer not null references performers(id)
);
create table if not exists performers_albums (
	id serial primary key,
	performer_id  integer references performers(id),
	album_id  integer references albums(id)
);
create table if not exists composition_compilation (
	id serial primary key,
	compilation_id integer references compilations(id),
	track_id integer references tracks(id)
);
