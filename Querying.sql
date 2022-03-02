-- 1st query
create table query1 as select gen.name as name, count(mov.title) as moviecount from movies mov, genres gen, hasagenre hmg where hmg.movieid = mov.movieid and hmg.genreid = gen.genreid group by gen.name;

--2nd query
create table query2 as select gen.name as name, avg(rat.rating) as rating from genres gen, ratings rat, hasagenre hmg where hmg.genreid = gen.genreid and hmg.movieid = rat.movieid group by gen.name;

--3rd query
create table query3 as select mov.title as title, count(rat.rating) as CountOfRatings from movies mov, ratings rat where rat.movieid=mov.movieid group by mov.title having count(rat.rating) >=10 ;

--4th query
create table query4 as select mov.movieid as movieid, mov.title as title from movies mov where mov.movieid in (select movieid from hasagenre where genreid = (select genreid from genres where name = 'Comedy'));

--5th query
create table query5 as select mov.title as title, avg(rat.rating) as average from movies mov, ratings rat where mov.movieid = rat.movieid group by mov.title;

--6th query
create table query6 as select avg(rat.rating) as average from ratings rat where rat.movieid in (select movieid from hasagenre where genreid = (select genreid from genres where name = 'Comedy'));

--7th query
create table query7 as select avg(rat.rating) as average from ratings rat where rat.movieid in (select distinct movieid from hasagenre where genreid in (select genreid from genres where name = 'Comedy') intersect select distinct movieid from hasagenre where genreid in (select genreid from genres where name = 'Romance'));

--8th query
create table query8 as select avg(rat.rating) as average from ratings rat where rat.movieid in (select distinct movieid from hasagenre where genreid in (select genreid from genres where name = 'Romance') except select distinct movieid from hasagenre where genreid in (select genreid from genres where name = 'Comedy'));

--9th query
create table query9 as select movieid as movieid, rating as rating from ratings where userid=:v1;

