CREATE TABLE users (
   userid int PRIMARY KEY,
   name VARCHAR(200) NOT NULL
);


CREATE TABLE movies (
   movieid INTEGER PRIMARY KEY,
   title VARCHAR(200) NOT NULL
);


CREATE TABLE taginfo (
   tagid int PRIMARY KEY,
   content VARCHAR(200) NOT NULL
);


CREATE TABLE genres (
   genreid INTEGER PRIMARY KEY,
   name VARCHAR(200)
);


CREATE TABLE ratings (
   userid int REFERENCES users(userid),
   movieid int REFERENCES movies(movieid),
   rating NUMERIC(2,1) CHECK ( rating >=0.0 and rating <= 5.0 ),
   timestamp BIGINT NOT NULL,
   CONSTRAINT ratings_pk PRIMARY KEY (userid, movieid)
);


CREATE TABLE tags (
   userid int REFERENCES users(userid),
   movieid int REFERENCES movies(movieid),
   tagid int REFERENCES taginfo(tagid),
   timestamp BIGINT NOT NULL,
   CONSTRAINT tags_pk PRIMARY KEY (userid, movieid, tagid)
);


CREATE TABLE hasagenre (
   movieid int REFERENCES movies(movieid),
   genreid int REFERENCES genres(genreid),
   CONSTRAINT hasagenre_pk PRIMARY KEY (movieid, genreid)
);