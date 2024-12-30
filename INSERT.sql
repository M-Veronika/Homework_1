INSERT INTO Artistes (id_artist, name_artist)
 VALUES (1, 'Frank Sinatra'),
        (2, 'Freddie Mercury'),
        (3, 'Jackson'),
        (4, 'Elvis Presly');
       
INSERT INTO Genres (id_genre, name_genre) 
VALUES (1, 'pop musik'),
       (2, 'rock'),
       (3, 'jazz');
      
INSERT INTO Albums (id_album, name_album, year_of_releas)
VALUES (1, 'Elvis Christmas Album', 1957),
       (2, 'Good Times', 1974),
       (3, 'Got no Be There', 2019),
       (4, 'Thriller', 1982),
       (5, 'Barcelona', 1988);

INSERT INTO Treks (id_trek, id_alb, name_trek, duration)
VALUES (1, 5, 'Walk On', '00:03:03'),
       (2, 3, 'Evrybody', '00:05:01'),
       (3, 3, 'Billie Jean', '00:04:38'),
       (4, 4, 'With You, my', '00:06:12'),
       (5, 2, 'Barcelona', '00:04:27'),
       (6, 1, 'The Show Must Go On', '00:04:59');
      
INSERT INTO Collection (id_coll, name_coll,year_of_releas)
VALUES (1, 'Greatest Hits', 1964),
       (2, 'Love Songs', 1975),
       (3, 'Frank Sinatra s Greatest Hits', 1970),
       (4, 'The Great Pretender', 1983),
       (5, 'Barcelona.', 2018);
     

 INSERT INTO ArtistGenres (id_genr, id_artis)
 VALUES (1, 3),
        (1, 2),
        (3, 1),
        (2, 4);
       
             
 INSERT INTO ArtistAlbum (id_art, id_a)
 VALUES (4, 1),
        (4, 2),
        (3, 3),
        (3, 4),
        (2, 5),
        (1, 5);
             
 INSERT  INTO TrekColl (id_tr, id_c)
 VALUES (1, 1),
        (2, 1),
        (3, 2),
        (4, 3),
        (5, 5),
        (6, 5);
       
       