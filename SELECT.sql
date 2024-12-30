SELECT name_trek, duration FROM Treks
WHERE duration = (
  SELECT MAX(duration) FROM Treks
  );
 
 SELECT name_trek FROM Treks
 WHERE duration BETWEEN '00:00:00' AND '00:03:30';
 
 SELECT name_coll FROM Collection
 WHERE year_of_releas BETWEEN 2018 AND 2020;

SELECT name_artist FROM Artistes
WHERE name_artist NOT LIKE '% %';

SELECT name_trek FROM Treks
WHERE name_trek LIKE '%my%' OR name_trek LIKE '%мой%';


SELECT Genres.name_genre, count(ArtistGenres.id_artis) 
  FROM  Genres
  JOIN ArtistGenres ON Genres.id_genre = ArtistGenres.id_genr 
  GROUP BY name_genre;


SELECT Albums.name_album, Albums.year_of_releas, count(Treks.id_alb) 
  FROM  Albums
  JOIN Treks ON Albums.id_album = Treks.id_alb 
  WHERE Albums.year_of_releas BETWEEN 2019 AND 2020
  GROUP BY Albums.name_album, Albums.year_of_releas;
 
 SELECT Albums.name_album, AVG(Treks.duration)
  FROM Albums
  JOIN Treks ON Albums.id_album = Treks.id_alb
  GROUP BY Albums.name_album;
 
 
 SELECT Artistes.name_artist, Albums.year_of_releas 
  FROM Artistes
  JOIN ArtistAlbum  ON Artistes.id_artist = ArtistAlbum.id_art
  JOIN Albums ON ArtistAlbum.id_a =Albums.id_album
  WHERE Albums.year_of_releas != 2020;
 
 SELECT Collection.name_coll FROM Collection
  JOIN TrekColl ON Collection.id_coll = TrekColl.id_c
  JOIN Treks ON TrekColl.id_tr = Treks.id_trek
  JOIN Albums ON Treks.id_alb = Albums.id_album
  JOIN ArtistAlbum ON Albums.id_album = ArtistAlbum.id_a
  JOIN Artistes ON Artistes.id_artist = ArtistAlbum.id_art
  WHERE Artistes.name_artist = 'Jackson'
  GROUP BY Collection.name_coll;
    

