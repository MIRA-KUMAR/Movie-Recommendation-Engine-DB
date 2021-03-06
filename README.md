# Create Movie Recommendation Database

# Background

In this database, a movie has two attributes: id, title. A possible movie record is as follows: 54796, 2 Days in Paris (2007).

A movie can be categorized into multiple genres. A genre is selected from Action, Adventure, Animation, Children’s, Comedy, Crime and so on. A movie may not have a genre.

A user can give a 5-star scale rating (0-5) to a movie. For instance, User (ID 4) gave 4 stars to Movie “God Father”. A user can only rate a movie once. The database needs to log each rating operation. The database should not allow any out-of-range ratings

A user can also assign a tag to a movie. A user can tag a movie multiple times. For instance, User (ID 20) assigned “very cool” tag to Movie “Mission: Impossible – Ghost Protocol”. Two days later, he added a new tag “unbelievable” to the same movie. Each tag is typically a single word or short phrase. The meaning, value and purpose of a particular tag are determined by each user. The database needs to log each tagging operation.

# First Requirement

According to the database design made by you, the movie database includes multiple tables. In particular, you need to consider seven tables: users, movies, taginfo, genres, ratings, tags, hasagenre. In this phase, you must create these tables and load the corresponding data into these tables.

1.  The description of the tables is as follows. You should also check the requirement in the given graphic description:

        users: userid (int, primary key), name (text)

        movies: movieid (integer, primary key), title (text)

        taginfo: tagid (int, primary key), content (text)

        genres: genreid (integer, primary key), name (text)

        ratings: userid (int, foreign key), movieid (int, foreign key), rating (numeric), timestamp (bigint, seconds since midnight Coordinated Universal Time (UTC) of January 1, 1970)

        tags: userid (int, foreign key), movieid (int, foreign key), tagid (int, foreign key), timestamp (bigint, seconds since midnight Coordinated Universal Time (UTC) of January 1, 1970).

        hasagenre: movieid (int, foreign key), genreid (int, foreign key)

# Second Requirement

        1. Write a SQL query to return the total number of movies for each genre. Your query result should be saved in a table called “query1” which has two attributes: name, moviecount.
        2. Write a SQL query to return the average rating per genre. Your query result should be saved in a table called “query2” which has two attributes: name, rating.
        3. Write a SQL query to return the movies have at least 10 ratings. Your query result should be saved in a table called “query3” which has two attributes: title, CountOfRatings.
        4. Write a SQL query to return all “Comedy” movies, including movieid and title. Your query result should be saved in a table called “query4” which has two attributes, movieid and title.
        5. Write a SQL query to return the average rating per movie. Your query result should be saved in a table called “query5” which has two attributes, title and average.
        6. Write a SQL query to return the average rating for all “Comedy” movies. Your query result should be saved in a table called “query6” which has one attribute, average.
        7. Write a SQL query to return the average rating for all movies and each of these movies is both “Comedy” and “Romance”. Your query result should be saved in a table called “query7” which has one attribute, average.
        8. Write a SQL query to return the average rating for all movies and each of these movies is “Romance” but not “Comedy”. Your query result should be saved in a table called “query8” which has one attribute, average.
        9. Find all movies that are rated by a User such that the userId is equal to v1. The v1 will be an integer parameter passed to the SQL query. Your query result should be saved in a table called “query9” which has two attributes, movieid and rating.


