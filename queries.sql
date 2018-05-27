/*1. All films with data.*/
SELECT * FROM films;

/*2. Films in a genre.*/
SET @theGenre = "Sci-Fi";
CALL movies_in_genre(@theGenre);

SET @theGenre = "Action";
CALL movies_in_genre(@theGenre);

SET @theGenre = "Adventure";
CALL movies_in_genre(@theGenre);

SET @theGenre = "Drama";
CALL movies_in_genre(@theGenre);

SET @theGenre = "Romance";
CALL movies_in_genre(@theGenre);

SET @theGenre = "Comedy";
CALL movies_in_genre(@theGenre);

SET @theGenre = "Musical";
CALL movies_in_genre(@theGenre);

SET @theGenre = "Fantasy";
CALL movies_in_genre(@theGenre);

/*3. Rented out films, to which customer and by which employee.*/
SELECT * FROM films_rented_out;

/*4. Late films and who rented them.*/
SELECT * FROM late_films;

/*5. Films rented out per employee.*/
SELECT * FROM rentals_per_employee;

/*6. Most rented films during the last month.*/
SELECT * FROM rentals_statistics;

/*7. Rent out film.*/
SET @theFilmCopyID = 12;
SET @thisCustomerID = 2;
SET @thisEmployeeID = 5;
CALL rent_out_film (@theFilmCopyID, @thisCustomerID, @thisEmployeeID, @message);
SELECT @message;

/*8. Is the film late?*/
SELECT late_film(2);

/*9. Return a film.*/
SET @theRentalID = 14;
SET @theFilmCopyID = 17;
SET @thisCustomerID = 10;
CALL return_film (@theRentalID, @theFilmCopyID, @thisCustomerID, @message);
SELECT @message;

/*SP to see all rentals for one specific customer, to check their rentalID for the film_return sp.*/
CALL rentals_each_customer(6);

/*Function to see the price of a rental.*/
SELECT rental_price(20);

/*Trigger table query.*/
SELECT * FROM statistics_table WHERE (rentalDate BETWEEN (CURDATE() - INTERVAL 1 MONTH) AND CURDATE());
